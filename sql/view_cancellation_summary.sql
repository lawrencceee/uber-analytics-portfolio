-- View: public.cancellation_summary

-- DROP VIEW public.cancellation_summary;

CREATE OR REPLACE VIEW public.cancellation_summary
 AS
 SELECT ride_date,
    booking_status,
    reason,
    count(*) AS count
   FROM ( SELECT rides.ride_date,
            rides.booking_id,
            rides.booking_status,
                CASE
                    WHEN rides.booking_status::text = 'No Driver Found'::text THEN 'No Driver Found'::text
                    ELSE concat_ws(' '::text, cancellations.reason_customer, cancellations.reason_driver, cancellations.reason_incomplete)
                END AS reason
           FROM rides
             JOIN cancellations ON rides.booking_id::text = cancellations.booking_id::text
          WHERE cancellations.reason_customer IS NOT NULL OR cancellations.reason_driver IS NOT NULL OR cancellations.reason_incomplete IS NOT NULL OR rides.booking_status::text = 'No Driver Found'::text) reference
  GROUP BY ride_date, booking_status, reason
  ORDER BY ride_date;

ALTER TABLE public.cancellation_summary
    OWNER TO postgres;

