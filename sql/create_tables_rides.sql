-- Table: public.rides

-- DROP TABLE IF EXISTS public.rides;

CREATE TABLE IF NOT EXISTS public.rides
(
    booking_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    customer_id character varying(20) COLLATE pg_catalog."default",
    vehicle_type character varying(50) COLLATE pg_catalog."default",
    pickup_location character varying(100) COLLATE pg_catalog."default",
    drop_location character varying(100) COLLATE pg_catalog."default",
    ride_date date,
    ride_time time without time zone,
    avg_vtat numeric,
    avg_ctat numeric,
    booking_value numeric,
    payment_method character varying(50) COLLATE pg_catalog."default",
    ride_distance numeric,
    driver_rating numeric,
    customer_rating numeric,
    booking_status character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT rides_pkey PRIMARY KEY (booking_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rides
    OWNER to postgres;