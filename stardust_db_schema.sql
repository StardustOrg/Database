--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-10-13 17:12:43

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 24599)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying NOT NULL,
    icon_path character varying NOT NULL,
    cover_path character varying NOT NULL,
    group_id integer
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24598)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_id_seq OWNER TO postgres;

--
-- TOC entry 4843 (class 0 OID 0)
-- Dependencies: 215
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- TOC entry 218 (class 1259 OID 24613)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    description character varying NOT NULL,
    amount integer DEFAULT 0 NOT NULL,
    picture_path character varying NOT NULL,
    price money NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24622)
-- Name: product_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_category (
    product_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.product_category OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24612)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_seq OWNER TO postgres;

--
-- TOC entry 4844 (class 0 OID 0)
-- Dependencies: 217
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- TOC entry 221 (class 1259 OID 24638)
-- Name: sale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sale (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    date_time timestamp with time zone NOT NULL
);


ALTER TABLE public.sale OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24637)
-- Name: sale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sale_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sale_id_seq OWNER TO postgres;

--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 220
-- Name: sale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sale_id_seq OWNED BY public.sale.id;


--
-- TOC entry 222 (class 1259 OID 24644)
-- Name: sale_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sale_product (
    sale_id bigint NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public.sale_product OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24660)
-- Name: stardust_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stardust_user (
    id integer NOT NULL,
    login character varying NOT NULL,
    email character varying NOT NULL,
    admin boolean DEFAULT false NOT NULL,
    password character varying NOT NULL,
    address character varying NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.stardust_user OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24659)
-- Name: stardust_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stardust_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stardust_user_id_seq OWNER TO postgres;

--
-- TOC entry 4846 (class 0 OID 0)
-- Dependencies: 223
-- Name: stardust_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stardust_user_id_seq OWNED BY public.stardust_user.id;


--
-- TOC entry 4657 (class 2604 OID 24602)
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- TOC entry 4658 (class 2604 OID 24616)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- TOC entry 4660 (class 2604 OID 24641)
-- Name: sale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale ALTER COLUMN id SET DEFAULT nextval('public.sale_id_seq'::regclass);


--
-- TOC entry 4661 (class 2604 OID 24663)
-- Name: stardust_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stardust_user ALTER COLUMN id SET DEFAULT nextval('public.stardust_user_id_seq'::regclass);


--
-- TOC entry 4829 (class 0 OID 24599)
-- Dependencies: 216
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4831 (class 0 OID 24613)
-- Dependencies: 218
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4832 (class 0 OID 24622)
-- Dependencies: 219
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4834 (class 0 OID 24638)
-- Dependencies: 221
-- Data for Name: sale; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4835 (class 0 OID 24644)
-- Dependencies: 222
-- Data for Name: sale_product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4837 (class 0 OID 24660)
-- Dependencies: 224
-- Data for Name: stardust_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stardust_user VALUES (1, 'admin01', 'admin@admin.teste', true, '123456', 'Rua A, 123', 'Leo Oliveira');


--
-- TOC entry 4847 (class 0 OID 0)
-- Dependencies: 215
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 1, false);


--
-- TOC entry 4848 (class 0 OID 0)
-- Dependencies: 217
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 1, false);


--
-- TOC entry 4849 (class 0 OID 0)
-- Dependencies: 220
-- Name: sale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sale_id_seq', 1, false);


--
-- TOC entry 4850 (class 0 OID 0)
-- Dependencies: 223
-- Name: stardust_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stardust_user_id_seq', 2, true);


--
-- TOC entry 4664 (class 2606 OID 24606)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 4668 (class 2606 OID 24626)
-- Name: product_category product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (product_id, category_id);


--
-- TOC entry 4666 (class 2606 OID 24621)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 4670 (class 2606 OID 24643)
-- Name: sale sale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale
    ADD CONSTRAINT sale_pkey PRIMARY KEY (id);


--
-- TOC entry 4672 (class 2606 OID 24648)
-- Name: sale_product sale_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_product
    ADD CONSTRAINT sale_product_pkey PRIMARY KEY (sale_id, product_id);


--
-- TOC entry 4674 (class 2606 OID 24670)
-- Name: stardust_user sd_user_email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stardust_user
    ADD CONSTRAINT sd_user_email UNIQUE (email);


--
-- TOC entry 4676 (class 2606 OID 24672)
-- Name: stardust_user sd_user_login; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stardust_user
    ADD CONSTRAINT sd_user_login UNIQUE (login);


--
-- TOC entry 4678 (class 2606 OID 24668)
-- Name: stardust_user stardust_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stardust_user
    ADD CONSTRAINT stardust_user_pkey PRIMARY KEY (id);


--
-- TOC entry 4679 (class 2606 OID 24607)
-- Name: category category_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_group_id FOREIGN KEY (group_id) REFERENCES public.category(id) NOT VALID;


--
-- TOC entry 4680 (class 2606 OID 24632)
-- Name: product_category pc_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT pc_category_id FOREIGN KEY (category_id) REFERENCES public.category(id);


--
-- TOC entry 4681 (class 2606 OID 24627)
-- Name: product_category pc_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT pc_product_id FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 4682 (class 2606 OID 24673)
-- Name: sale sale_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale
    ADD CONSTRAINT sale_user_id FOREIGN KEY (user_id) REFERENCES public.stardust_user(id) NOT VALID;


--
-- TOC entry 4683 (class 2606 OID 24654)
-- Name: sale_product sp_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_product
    ADD CONSTRAINT sp_product_id FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 4684 (class 2606 OID 24649)
-- Name: sale_product sp_sale_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_product
    ADD CONSTRAINT sp_sale_id FOREIGN KEY (sale_id) REFERENCES public.sale(id);


-- Completed on 2023-10-13 17:12:43

--
-- PostgreSQL database dump complete
--
