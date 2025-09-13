-- Table: public.customers

-- DROP TABLE IF EXISTS public.customers;

CREATE TABLE IF NOT EXISTS public.customers
(
    booking_date date,
    booking_time time without time zone,
    booking_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    booking_status character varying(50) COLLATE pg_catalog."default",
    customer_id character varying(20) COLLATE pg_catalog."default",
    vehicle_type character varying(50) COLLATE pg_catalog."default",
    pickup_location character varying(100) COLLATE pg_catalog."default",
    drop_location character varying(100) COLLATE pg_catalog."default",
    avg_vtat numeric(6,2),
    avg_ctat numeric(6,2),
    cancelled_rides_by_customer integer,
    cancel_reason_by_customer character varying(255) COLLATE pg_catalog."default",
    cancelled_rides_by_driver integer,
    driver_cancellation_reason character varying(255) COLLATE pg_catalog."default",
    incomplete_rides integer,
    incomplete_rides_reason character varying(255) COLLATE pg_catalog."default",
    booking_value numeric(10,2),
    ride_distance numeric(8,2),
    driver_ratings numeric(3,2),
    customer_rating numeric(3,2),
    payment_method character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT customers_pkey PRIMARY KEY (booking_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.customers
    OWNER to postgres;