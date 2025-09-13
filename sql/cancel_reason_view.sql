-- View: public.cancel_reason

-- DROP VIEW public.cancel_reason;

CREATE OR REPLACE VIEW public.cancel_reason
 AS
 SELECT booking_date,
    count(*) AS total,
    booking_status,
    COALESCE(driver_cancellation_reason, cancel_reason_by_customer, incomplete_rides_reason, 'No driver found'::character varying) AS reason
   FROM customers
  WHERE NOT booking_status::text = 'Completed'::text
  GROUP BY booking_date, booking_status, (COALESCE(driver_cancellation_reason, cancel_reason_by_customer, incomplete_rides_reason, 'No driver found'::character varying))
  ORDER BY booking_date;

ALTER TABLE public.cancel_reason
    OWNER TO postgres;

