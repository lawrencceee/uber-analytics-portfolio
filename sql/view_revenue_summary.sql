-- View: public.revenue_summary

-- DROP VIEW public.revenue_summary;

CREATE OR REPLACE VIEW public.revenue_summary
 AS
 SELECT ride_date,
    payment_method,
    sum(booking_value) AS total_revenue,
    avg(booking_value) AS avg_booking_value,
    avg(customer_rating) AS avg_customer_rating,
    avg(driver_rating) AS avg_driver_rating,
    vehicle_type,
    avg(avg_vtat) AS avg_pickup_time,
    avg(avg_ctat) AS avg_drip_duration
   FROM rides
  WHERE booking_status::text = 'Completed'::text
  GROUP BY ride_date, payment_method, vehicle_type;

ALTER TABLE public.revenue_summary
    OWNER TO postgres;

