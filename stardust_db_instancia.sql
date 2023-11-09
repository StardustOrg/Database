--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-09 10:06:00

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

--
-- TOC entry 4823 (class 0 OID 24599)
-- Dependencies: 216
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artist (id, name, icon_url, cover_url, group_id) FROM stdin;
1	newjeans	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/newjeans_icon.jpg	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/nj_cover.jpg	\N
2	minji	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/minji_icon.jpg	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/minji_cover.jpg	1
3	hanni	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/hanni_icon.jpg	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/hanni_cover.jpg	1
4	danielle	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/dani_icon.jpg	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/dani_cover.jpg	1
5	haerin	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/haerin_icon.jpg	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/haerin_cover.jpg	1
6	hyein	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/hyein_icon.jpg	https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/hyein_cover.jpg	1
\.


--
-- TOC entry 4825 (class 0 OID 24613)
-- Dependencies: 218
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, description, amount, picture_path, price) FROM stdin;
\.


--
-- TOC entry 4826 (class 0 OID 24622)
-- Dependencies: 219
-- Data for Name: product_artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_artist (product_id, artist_id) FROM stdin;
\.


--
-- TOC entry 4831 (class 0 OID 24660)
-- Dependencies: 224
-- Data for Name: stardust_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stardust_user (id, login, email, admin, password, address, name) FROM stdin;
2	admin01	admin@admin.teste	t	123456	Rua A, 123	Leo Oliveira
3	teste02	tes0ads@teste.com	f	123456	Rua 123	Yanna Teste
\.


--
-- TOC entry 4828 (class 0 OID 24638)
-- Dependencies: 221
-- Data for Name: sale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sale (id, user_id, date_time) FROM stdin;
\.


--
-- TOC entry 4829 (class 0 OID 24644)
-- Dependencies: 222
-- Data for Name: sale_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sale_product (sale_id, product_id, quantity) FROM stdin;
\.


--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 215
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 6, true);


--
-- TOC entry 4838 (class 0 OID 0)
-- Dependencies: 217
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 1, false);


--
-- TOC entry 4839 (class 0 OID 0)
-- Dependencies: 220
-- Name: sale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sale_id_seq', 1, false);


--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 223
-- Name: stardust_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stardust_user_id_seq', 5, true);


-- Completed on 2023-11-09 10:06:00

--
-- PostgreSQL database dump complete
--

