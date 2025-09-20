-- View: public.ride_summary

-- DROP VIEW public.ride_summary;

CREATE OR REPLACE VIEW public.ride_summary
 AS
 SELECT ride_date,
    vehicle_type,
    count(*) AS total_rides,
    avg(ride_distance) AS avg_distance,
    avg(driver_rating) AS avg_driver_rating
   FROM rides
  GROUP BY ride_date, vehicle_type;

ALTER TABLE public.ride_summary
    OWNER TO postgres;

