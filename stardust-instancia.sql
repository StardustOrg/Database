--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-09-28 22:43:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 149192)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    group_id integer,
    name character varying NOT NULL,
    picture character varying NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 149204)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    description character varying NOT NULL,
    amount integer DEFAULT 0 NOT NULL,
    picture character varying NOT NULL,
    price money NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 149222)
-- Name: product_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_category (
    product_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.product_category OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 149212)
-- Name: sale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sale (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    date_time timestamp without time zone NOT NULL
);


ALTER TABLE public.sale OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 149237)
-- Name: sale_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sale_product (
    sale_id bigint NOT NULL,
    product_id integer NOT NULL,
    quantity integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.sale_product OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 149184)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    login character varying NOT NULL,
    email character varying NOT NULL,
    admin boolean DEFAULT false NOT NULL,
    password character varying NOT NULL,
    address character varying NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 3198 (class 2606 OID 149198)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 149226)
-- Name: product_category product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (product_id, category_id);


--
-- TOC entry 3200 (class 2606 OID 149211)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 149216)
-- Name: sale sale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale
    ADD CONSTRAINT sale_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 149242)
-- Name: sale_product sale_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_product
    ADD CONSTRAINT sale_product_pkey PRIMARY KEY (sale_id, product_id);


--
-- TOC entry 3196 (class 2606 OID 149191)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 149232)
-- Name: product_category category_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT category_id_fk FOREIGN KEY (category_id) REFERENCES public.category(id);


--
-- TOC entry 3207 (class 2606 OID 149199)
-- Name: category group_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT group_id_fk FOREIGN KEY (group_id) REFERENCES public.category(id) NOT VALID;


--
-- TOC entry 3211 (class 2606 OID 149248)
-- Name: sale_product product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_product
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 3210 (class 2606 OID 149227)
-- Name: product_category product_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 3212 (class 2606 OID 149243)
-- Name: sale_product sale_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_product
    ADD CONSTRAINT sale_id_fk FOREIGN KEY (sale_id) REFERENCES public.sale(id);


--
-- TOC entry 3208 (class 2606 OID 149217)
-- Name: sale user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public."user"(id);


-- Completed on 2023-09-28 22:43:45

--
-- PostgreSQL database dump complete
--

