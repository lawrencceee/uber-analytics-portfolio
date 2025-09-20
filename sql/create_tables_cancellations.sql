-- Table: public.cancellations

-- DROP TABLE IF EXISTS public.cancellations;

CREATE TABLE IF NOT EXISTS public.cancellations
(
    booking_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    booking_status character varying(30) COLLATE pg_catalog."default",
    cancelled_rides_by_customer numeric,
    reason_customer text COLLATE pg_catalog."default",
    cancelled_rides_by_driver numeric,
    reason_driver text COLLATE pg_catalog."default",
    incomplete_rides numeric,
    reason_incomplete text COLLATE pg_catalog."default",
    CONSTRAINT cancellations_pkey PRIMARY KEY (booking_id),
    CONSTRAINT cancellations_booking_id_fkey FOREIGN KEY (booking_id)
        REFERENCES public.rides (booking_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cancellations
    OWNER to postgres;