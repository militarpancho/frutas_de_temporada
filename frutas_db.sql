--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: fruits; Type: TABLE; Schema: public; Owner: dwdsounitzibsz
--

CREATE TABLE public.fruits (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.fruits OWNER TO dwdsounitzibsz;

--
-- Name: months; Type: TABLE; Schema: public; Owner: dwdsounitzibsz
--

CREATE TABLE public.months (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.months OWNER TO dwdsounitzibsz;

--
-- Name: seasonal_junction; Type: TABLE; Schema: public; Owner: dwdsounitzibsz
--

CREATE TABLE public.seasonal_junction (
    month_id integer NOT NULL,
    fruit_id integer NOT NULL,
    year integer
);


ALTER TABLE public.seasonal_junction OWNER TO dwdsounitzibsz;

--
-- Name: vegetables; Type: TABLE; Schema: public; Owner: dwdsounitzibsz
--

CREATE TABLE public.vegetables (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.vegetables OWNER TO dwdsounitzibsz;

--
-- Data for Name: fruits; Type: TABLE DATA; Schema: public; Owner: dwdsounitzibsz
--

COPY public.fruits (id, name) FROM stdin;
1	aguacate
2	albaricoque
3	breva
4	caqui
5	cereza
6	chirimoya
7	ciruela
8	frambuesa
9	fresa
10	granada
11	higo
12	kiwi
13	limon
14	mandarina
15	mango
16	manzana
17	melocotón
18	melón
19	membrillo
20	naranja
21	nectarina
22	níspero
23	paraguaya
24	pera
25	plátano
26	pomelo
27	sandia
28	uva
\.


--
-- Data for Name: months; Type: TABLE DATA; Schema: public; Owner: dwdsounitzibsz
--

COPY public.months (id, name) FROM stdin;
1	Enero
2	Febrero
3	Marzo
4	Abril
5	Mayo
6	Junio
7	Julio
8	Agosto
9	Septiembre
10	Octubre
11	Noviembre
12	Diciembre
\.


--
-- Data for Name: seasonal_junction; Type: TABLE DATA; Schema: public; Owner: dwdsounitzibsz
--

COPY public.seasonal_junction (month_id, fruit_id, year) FROM stdin;
1	1	2019
1	4	2019
1	6	2019
1	8	2019
1	9	2019
1	12	2019
1	13	2019
1	14	2019
1	16	2019
1	20	2019
1	24	2019
1	25	2019
1	26	2019
2	1	2019
2	8	2019
2	9	2019
2	12	2019
2	13	2019
2	14	2019
2	16	2019
2	20	2019
2	24	2019
2	25	2019
2	26	2019
3	1	2019
3	8	2019
3	9	2019
3	12	2019
3	13	2019
3	14	2019
3	16	2019
3	20	2019
3	24	2019
3	25	2019
3	26	2019
4	1	2019
4	8	2019
4	9	2019
4	12	2019
4	13	2019
4	14	2019
4	16	2019
4	17	2019
4	20	2019
4	21	2019
4	22	2019
4	24	2019
4	25	2019
4	26	2019
3	22	2019
5	1	2019
5	2	2019
5	5	2019
5	7	2019
5	9	2019
5	13	2019
5	14	2019
5	17	2019
5	18	2019
5	20	2019
5	21	2019
5	22	2019
5	23	2019
5	25	2019
5	26	2019
5	27	2019
6	2	2019
6	3	2019
6	5	2019
6	7	2019
6	11	2019
6	13	2019
6	17	2019
6	18	2019
6	20	2019
6	21	2019
6	22	2019
6	23	2019
6	24	2019
6	25	2019
6	27	2019
7	2	2019
7	3	2019
7	5	2019
7	7	2019
7	11	2019
7	15	2019
7	17	2019
7	18	2019
7	19	2019
7	21	2019
7	23	2019
7	24	2019
7	25	2019
7	27	2019
8	2	2019
8	5	2019
8	7	2019
8	11	2019
8	15	2019
8	17	2019
8	18	2019
8	19	2019
8	21	2019
8	23	2019
8	24	2019
8	25	2019
8	27	2019
8	28	2019
9	2	2019
9	4	2019
9	6	2019
9	7	2019
9	10	2019
9	11	2019
9	12	2019
9	14	2019
9	15	2019
9	16	2019
9	17	2019
9	18	2019
9	19	2019
9	21	2019
9	24	2019
9	25	2019
9	27	2019
9	28	2019
10	1	2019
10	4	2019
10	6	2019
10	8	2019
10	10	2019
10	11	2019
10	12	2019
10	13	2019
10	14	2019
10	15	2019
10	16	2019
10	17	2019
10	19	2019
10	20	2019
10	21	2019
10	24	2019
10	25	2019
10	28	2019
11	1	2019
11	4	2019
11	6	2019
11	8	2019
11	10	2019
11	12	2019
11	13	2019
11	14	2019
11	15	2019
11	16	2019
11	20	2019
11	24	2019
11	25	2019
11	26	2019
11	28	2019
12	1	2019
12	4	2019
12	6	2019
12	8	2019
12	12	2019
12	13	2019
12	14	2019
12	16	2019
12	20	2019
12	24	2019
12	25	2019
12	26	2019
12	28	2019
\.


--
-- Data for Name: vegetables; Type: TABLE DATA; Schema: public; Owner: dwdsounitzibsz
--

COPY public.vegetables (id, name) FROM stdin;
1	acelga
2	ajo
3	alcachofa
4	apio
5	berenjena
6	brócoli
7	calabacín
8	calabaza
9	cardo
10	cebolla
11	col lombarda
12	coliflor
13	endibia
14	escarola
15	esparrago verde
16	espinaca
17	guisante
18	haba
19	judía verde
20	lechuga
21	nabo
22	pepino
23	pimiento
24	puerro
25	rabano
26	remolacha
27	repollo
28	tomate
29	zanahoria
\.


--
-- Name: fruits fruits_name_key; Type: CONSTRAINT; Schema: public; Owner: dwdsounitzibsz
--

ALTER TABLE ONLY public.fruits
    ADD CONSTRAINT fruits_name_key UNIQUE (name);


--
-- Name: fruits fruits_pkey; Type: CONSTRAINT; Schema: public; Owner: dwdsounitzibsz
--

ALTER TABLE ONLY public.fruits
    ADD CONSTRAINT fruits_pkey PRIMARY KEY (id);


--
-- Name: seasonal_junction id; Type: CONSTRAINT; Schema: public; Owner: dwdsounitzibsz
--

ALTER TABLE ONLY public.seasonal_junction
    ADD CONSTRAINT id PRIMARY KEY (month_id, fruit_id);


--
-- Name: months months_pkey; Type: CONSTRAINT; Schema: public; Owner: dwdsounitzibsz
--

ALTER TABLE ONLY public.months
    ADD CONSTRAINT months_pkey PRIMARY KEY (id);


--
-- Name: vegetables vegetables_name_key; Type: CONSTRAINT; Schema: public; Owner: dwdsounitzibsz
--

ALTER TABLE ONLY public.vegetables
    ADD CONSTRAINT vegetables_name_key UNIQUE (name);


--
-- Name: vegetables vegetables_pkey; Type: CONSTRAINT; Schema: public; Owner: dwdsounitzibsz
--

ALTER TABLE ONLY public.vegetables
    ADD CONSTRAINT vegetables_pkey PRIMARY KEY (id);


--
-- Name: seasonal_junction seasonal_junction_fruit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dwdsounitzibsz
--

ALTER TABLE ONLY public.seasonal_junction
    ADD CONSTRAINT seasonal_junction_fruit_id_fkey FOREIGN KEY (fruit_id) REFERENCES public.fruits(id);


--
-- Name: seasonal_junction seasonal_junction_month_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dwdsounitzibsz
--

ALTER TABLE ONLY public.seasonal_junction
    ADD CONSTRAINT seasonal_junction_month_id_fkey FOREIGN KEY (month_id) REFERENCES public.months(id);


--
-- PostgreSQL database dump complete
--

