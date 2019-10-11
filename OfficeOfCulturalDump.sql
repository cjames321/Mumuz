--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-10 14:29:08

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

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 16674)
-- Name: borrowed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.borrowed (
    borrowed_id integer NOT NULL,
    borrowers_id integer NOT NULL,
    costume_id integer NOT NULL,
    borrowed_num_of_item integer NOT NULL,
    borrowed_date date DEFAULT CURRENT_DATE,
    borrowed_time time without time zone DEFAULT CURRENT_TIME
);


ALTER TABLE public.borrowed OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16672)
-- Name: borrowed_borrowed_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.borrowed_borrowed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.borrowed_borrowed_id_seq OWNER TO postgres;

--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 200
-- Name: borrowed_borrowed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.borrowed_borrowed_id_seq OWNED BY public.borrowed.borrowed_id;


--
-- TOC entry 197 (class 1259 OID 16595)
-- Name: borrowers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.borrowers (
    borrowers_id integer NOT NULL,
    borrowers_name character varying(50) NOT NULL,
    borrowers_course character varying(20) NOT NULL,
    borrowers_contact bigint NOT NULL
);


ALTER TABLE public.borrowers OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16593)
-- Name: borrowers_borrowers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.borrowers_borrowers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.borrowers_borrowers_id_seq OWNER TO postgres;

--
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 196
-- Name: borrowers_borrowers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.borrowers_borrowers_id_seq OWNED BY public.borrowers.borrowers_id;


--
-- TOC entry 199 (class 1259 OID 16605)
-- Name: costume; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.costume (
    costume_id integer NOT NULL,
    costume_name character varying(50) NOT NULL,
    costume_color character varying(20),
    costume_quantity integer,
    costume_available integer
);


ALTER TABLE public.costume OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16603)
-- Name: costume_costume_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.costume_costume_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.costume_costume_id_seq OWNER TO postgres;

--
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 198
-- Name: costume_costume_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.costume_costume_id_seq OWNED BY public.costume.costume_id;


--
-- TOC entry 203 (class 1259 OID 16694)
-- Name: returned; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.returned (
    returned_id integer NOT NULL,
    borrowers_id integer NOT NULL,
    costume_id integer NOT NULL,
    returned_num_of_item integer NOT NULL,
    returned_date date DEFAULT CURRENT_DATE,
    returned_time time without time zone DEFAULT CURRENT_TIME
);


ALTER TABLE public.returned OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16692)
-- Name: returned_returned_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.returned_returned_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.returned_returned_id_seq OWNER TO postgres;

--
-- TOC entry 2862 (class 0 OID 0)
-- Dependencies: 202
-- Name: returned_returned_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.returned_returned_id_seq OWNED BY public.returned.returned_id;


--
-- TOC entry 2705 (class 2604 OID 16677)
-- Name: borrowed borrowed_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowed ALTER COLUMN borrowed_id SET DEFAULT nextval('public.borrowed_borrowed_id_seq'::regclass);


--
-- TOC entry 2703 (class 2604 OID 16598)
-- Name: borrowers borrowers_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowers ALTER COLUMN borrowers_id SET DEFAULT nextval('public.borrowers_borrowers_id_seq'::regclass);


--
-- TOC entry 2704 (class 2604 OID 16608)
-- Name: costume costume_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costume ALTER COLUMN costume_id SET DEFAULT nextval('public.costume_costume_id_seq'::regclass);


--
-- TOC entry 2708 (class 2604 OID 16697)
-- Name: returned returned_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.returned ALTER COLUMN returned_id SET DEFAULT nextval('public.returned_returned_id_seq'::regclass);


--
-- TOC entry 2851 (class 0 OID 16674)
-- Dependencies: 201
-- Data for Name: borrowed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.borrowed (borrowed_id, borrowers_id, costume_id, borrowed_num_of_item, borrowed_date, borrowed_time) FROM stdin;
1	1	1	2	2019-08-24	19:16:38.05584
2	1	1	5	2019-08-29	13:48:56.410484
3	1	4	3	2019-09-05	12:07:21.053411
4	1	8	10	2019-09-08	17:54:35.273934
5	1	6	5	2019-09-08	17:57:05.445316
6	1	8	1	2019-09-08	17:58:06.578685
7	1	5	10	2019-09-08	17:58:52.920522
\.


--
-- TOC entry 2847 (class 0 OID 16595)
-- Dependencies: 197
-- Data for Name: borrowers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.borrowers (borrowers_id, borrowers_name, borrowers_course, borrowers_contact) FROM stdin;
1	Julias	BSHRM	12
2	Patrick	BSIT	197703147
3	wowowot	BSMRM	9197703147
\.


--
-- TOC entry 2849 (class 0 OID 16605)
-- Dependencies: 199
-- Data for Name: costume; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.costume (costume_id, costume_name, costume_color, costume_quantity, costume_available) FROM stdin;
2	adasd	red	12	12
1	barong tagalog	white	10	5
4	asukarap	white	10	7
7	ooh	wayt	12	12
6	sablay	pinkish	12	7
8	hangin	blanko	12	1
5	blahblah	black	20	10
\.


--
-- TOC entry 2853 (class 0 OID 16694)
-- Dependencies: 203
-- Data for Name: returned; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.returned (returned_id, borrowers_id, costume_id, returned_num_of_item, returned_date, returned_time) FROM stdin;
1	1	1	5	2019-08-24	19:44:47.960044
\.


--
-- TOC entry 2863 (class 0 OID 0)
-- Dependencies: 200
-- Name: borrowed_borrowed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.borrowed_borrowed_id_seq', 7, true);


--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 196
-- Name: borrowers_borrowers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.borrowers_borrowers_id_seq', 3, true);


--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 198
-- Name: costume_costume_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.costume_costume_id_seq', 8, true);


--
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 202
-- Name: returned_returned_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.returned_returned_id_seq', 1, true);


--
-- TOC entry 2718 (class 2606 OID 16681)
-- Name: borrowed borrowed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowed
    ADD CONSTRAINT borrowed_pkey PRIMARY KEY (borrowed_id);


--
-- TOC entry 2712 (class 2606 OID 16602)
-- Name: borrowers borrowers_borrowers_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowers
    ADD CONSTRAINT borrowers_borrowers_name_key UNIQUE (borrowers_name);


--
-- TOC entry 2714 (class 2606 OID 16600)
-- Name: borrowers borrowers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowers
    ADD CONSTRAINT borrowers_pkey PRIMARY KEY (borrowers_id);


--
-- TOC entry 2716 (class 2606 OID 16610)
-- Name: costume costume_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costume
    ADD CONSTRAINT costume_pkey PRIMARY KEY (costume_id);


--
-- TOC entry 2720 (class 2606 OID 16701)
-- Name: returned returned_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.returned
    ADD CONSTRAINT returned_pkey PRIMARY KEY (returned_id);


--
-- TOC entry 2721 (class 2606 OID 16682)
-- Name: borrowed borrowed_borrowers_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowed
    ADD CONSTRAINT borrowed_borrowers_id_fkey FOREIGN KEY (borrowers_id) REFERENCES public.borrowers(borrowers_id);


--
-- TOC entry 2722 (class 2606 OID 16687)
-- Name: borrowed borrowed_costume_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowed
    ADD CONSTRAINT borrowed_costume_id_fkey FOREIGN KEY (costume_id) REFERENCES public.costume(costume_id);


--
-- TOC entry 2723 (class 2606 OID 16702)
-- Name: returned returned_borrowers_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.returned
    ADD CONSTRAINT returned_borrowers_id_fkey FOREIGN KEY (borrowers_id) REFERENCES public.borrowers(borrowers_id);


--
-- TOC entry 2724 (class 2606 OID 16707)
-- Name: returned returned_costume_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.returned
    ADD CONSTRAINT returned_costume_id_fkey FOREIGN KEY (costume_id) REFERENCES public.costume(costume_id);


-- Completed on 2019-10-10 14:29:08

--
-- PostgreSQL database dump complete
--

