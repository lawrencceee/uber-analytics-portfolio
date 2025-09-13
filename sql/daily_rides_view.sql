-- View: public.daily_rides

-- DROP VIEW public.daily_rides;

CREATE OR REPLACE VIEW public.daily_rides
 AS
 SELECT booking_date,
    count(*) AS total_rides,
    count(*) FILTER (WHERE booking_status::text = 'Completed'::text) AS completed_rides,
    count(*) FILTER (WHERE booking_status::text = 'Cancelled by Driver'::text) AS cancelled_by_drivers,
    count(*) FILTER (WHERE booking_status::text = 'Cancelled by Customer'::text) AS cancelled_by_customers,
    count(*) FILTER (WHERE booking_status::text = 'No Driver Found'::text) AS no_driver_found,
    count(*) FILTER (WHERE booking_status::text = 'Incomplete'::text) AS incompele_rides
   FROM customers
  GROUP BY booking_date;

ALTER TABLE public.daily_rides
    OWNER TO postgres;

