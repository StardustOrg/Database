--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-15 13:16:17

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

INSERT INTO public.artist VALUES (1, 'NewJeans', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/newjeans_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/nj_cover.jpg', NULL);
INSERT INTO public.artist VALUES (2, 'Minji', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/minji_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/minji_cover.jpg', 1);
INSERT INTO public.artist VALUES (3, 'Hanni', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/hanni_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/hanni_cover.jpg', 1);
INSERT INTO public.artist VALUES (4, 'Danielle', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/dani_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/dani_cover.jpg', 1);
INSERT INTO public.artist VALUES (5, 'Haerin', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/haerin_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/haerin_cover.jpg', 1);
INSERT INTO public.artist VALUES (6, 'Hyein', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/hyein_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/hyein_cover.jpg', 1);
INSERT INTO public.artist VALUES (7, 'aespa', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/aespa_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/aespa_cover.jpg', NULL);
INSERT INTO public.artist VALUES (8, 'Karina', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/karina_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/karina_cover.jpg', 7);
INSERT INTO public.artist VALUES (9, 'Giselle', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/giselle_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/giselle_cover.jpg', 7);
INSERT INTO public.artist VALUES (10, 'Winter', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/winter_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/winter_cover.jpg', 7);
INSERT INTO public.artist VALUES (11, 'NingNing', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/ningning_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/aespa/ningning_cover.jpg', 7);
INSERT INTO public.artist VALUES (12, 'IU', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/iu/iu_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/iu/iu_cover.jpg', NULL);
INSERT INTO public.artist VALUES (13, 'SEVENTEEN', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/svt_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/svt_cover.jpg', NULL);
INSERT INTO public.artist VALUES (14, 'S.coups', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/scoups_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/scoups_cover.jpg', 13);
INSERT INTO public.artist VALUES (15, 'Jeonghan', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/jeonghan_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/jeonghan_cover.jpg', 13);
INSERT INTO public.artist VALUES (16, 'Joshua', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/joshua_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/joshua_cover.jpg', 13);
INSERT INTO public.artist VALUES (17, 'Jun', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/jun_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/jun_cover.jpg', 13);
INSERT INTO public.artist VALUES (18, 'Hoshi', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/hoshi_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/hoshi_cover.jpg', 13);
INSERT INTO public.artist VALUES (19, 'Wonwoo', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/wonwoo_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/wonwoo_cover.jpg', 13);
INSERT INTO public.artist VALUES (20, 'Woozi', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/woozi_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/woozi_cover.jpg', 13);
INSERT INTO public.artist VALUES (21, 'DK', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/dk_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/dk_cover.jpg', 13);
INSERT INTO public.artist VALUES (22, 'Mingyu', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/mingyu_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/mingyu_cover.jpg', 13);
INSERT INTO public.artist VALUES (23, 'The8', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/the8_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/the8_cover.jpg', 13);
INSERT INTO public.artist VALUES (24, 'Seungkwan', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/seungkwan_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/seungkwan_cover.jpg', 13);
INSERT INTO public.artist VALUES (25, 'Vernon', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/vernon_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/vernon_cover.jpg', 13);
INSERT INTO public.artist VALUES (26, 'Dino', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/dino_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/svt/dino_cover.jpg', 13);
INSERT INTO public.artist VALUES (34, 'LE SSERAFIM', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/lesserafim_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/lesserafim_cover.jpg', NULL);
INSERT INTO public.artist VALUES (35, 'Kim Chaewon', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/chaewon_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/chaewon_cover.jpg', 34);
INSERT INTO public.artist VALUES (36, 'Sakura', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/sakura_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/sakura_cover.jpg', 34);
INSERT INTO public.artist VALUES (37, 'Huh Yunjin', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/yujin_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/yujin_cover.jpg', 34);
INSERT INTO public.artist VALUES (38, 'Kazuha', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/kazuha_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/kazuha_cover.jpg', 34);
INSERT INTO public.artist VALUES (39, 'Hong Eunchae', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/eunchae_icon.jpg', 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/eunchae_cover.jpg', 34);


--
-- TOC entry 4825 (class 0 OID 24613)
-- Dependencies: 218
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product VALUES (1, 'NewJeans Photocard "Bunnyland" Version', 4, 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/photocard/hanni-bunnyland.png', 100.42);
INSERT INTO public.product VALUES (2, 'Official New Jeans Lightstick Photocards / Bunnies Tokkis', 10, 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/photocard/hanni-lightstick.png', 50.95);
INSERT INTO public.product VALUES (3, 'NewJeans Haerin OMG Photocard', 6, 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/nj/photocard/haerin-omg-pc.png', 75.00);
INSERT INTO public.product VALUES (4, 'Huh Yujin "Antifragile" Version 01', 6, 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/photocards/yujin-atifragile.png', 35.62);
INSERT INTO public.product VALUES (5, 'Sakura "Antifragile" Version 01', 1, 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/photocards/sakura-atifragile.png', 35.62);
INSERT INTO public.product VALUES (6, 'Kim Chaewon "Antifragile" Version 01', 2, 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/photocards/chaewon-atifragile.png', 35.62);
INSERT INTO public.product VALUES (7, 'Kazuha "Antifragile" Version 01', 5, 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/photocards/kazuha-atifragile.png', 35.62);
INSERT INTO public.product VALUES (8, 'Eunchae "Antifragile" Version 01', 15, 'https://raw.githubusercontent.com/StardustOrg/stardust-assets/main/lesserafim/photocards/eunchae-atifragile.png', 35.62);


--
-- TOC entry 4826 (class 0 OID 24622)
-- Dependencies: 219
-- Data for Name: product_artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_artist VALUES (1, 1);
INSERT INTO public.product_artist VALUES (1, 3);
INSERT INTO public.product_artist VALUES (2, 1);
INSERT INTO public.product_artist VALUES (2, 3);
INSERT INTO public.product_artist VALUES (3, 1);
INSERT INTO public.product_artist VALUES (3, 5);
INSERT INTO public.product_artist VALUES (4, 34);
INSERT INTO public.product_artist VALUES (4, 37);
INSERT INTO public.product_artist VALUES (5, 34);
INSERT INTO public.product_artist VALUES (5, 36);
INSERT INTO public.product_artist VALUES (6, 34);
INSERT INTO public.product_artist VALUES (6, 35);
INSERT INTO public.product_artist VALUES (7, 34);
INSERT INTO public.product_artist VALUES (7, 38);
INSERT INTO public.product_artist VALUES (8, 34);
INSERT INTO public.product_artist VALUES (8, 39);


--
-- TOC entry 4831 (class 0 OID 24660)
-- Dependencies: 224
-- Data for Name: stardust_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stardust_user VALUES (2, 'admin01', 'admin@admin.teste', true, '123456', 'Rua A, 123', 'Leo Oliveira');
INSERT INTO public.stardust_user VALUES (3, 'teste02', 'tes0ads@teste.com', false, '123456', 'Rua 123', 'Yanna Teste');
INSERT INTO public.stardust_user VALUES (6, 'yannaa', 'test@teste.com', false, '123456', 'Rua 123', 'Yanna Teste');


--
-- TOC entry 4828 (class 0 OID 24638)
-- Dependencies: 221
-- Data for Name: sale; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4829 (class 0 OID 24644)
-- Dependencies: 222
-- Data for Name: sale_product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 215
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 39, true);


--
-- TOC entry 4838 (class 0 OID 0)
-- Dependencies: 217
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 18, true);


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

SELECT pg_catalog.setval('public.stardust_user_id_seq', 6, true);


-- Completed on 2023-11-15 13:16:17

--
-- PostgreSQL database dump complete
--

