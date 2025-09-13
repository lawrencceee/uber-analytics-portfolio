-- View: public.ride_summary

-- DROP VIEW public.ride_summary;

CREATE OR REPLACE VIEW public.ride_summary
 AS
 SELECT booking_date,
    vehicle_type,
    count(*) AS total_rides,
    avg(ride_distance) AS avg_distance,
    avg(driver_ratings) AS avg_driver_rating
   FROM customers
  GROUP BY booking_date, vehicle_type;

ALTER TABLE public.ride_summary
    OWNER TO postgres;

