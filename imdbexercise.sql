--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: JamesHartanto
--

CREATE TABLE genre (
    id_genre integer NOT NULL,
    type character varying(25) NOT NULL
);


ALTER TABLE genre OWNER TO "JamesHartanto";

--
-- Name: genre_id_genre_seq; Type: SEQUENCE; Schema: public; Owner: JamesHartanto
--

CREATE SEQUENCE genre_id_genre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genre_id_genre_seq OWNER TO "JamesHartanto";

--
-- Name: genre_id_genre_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: JamesHartanto
--

ALTER SEQUENCE genre_id_genre_seq OWNED BY genre.id_genre;


--
-- Name: linkmoviegenre; Type: TABLE; Schema: public; Owner: JamesHartanto
--

CREATE TABLE linkmoviegenre (
    id integer NOT NULL,
    id_movie integer NOT NULL,
    id_genre integer NOT NULL
);


ALTER TABLE linkmoviegenre OWNER TO "JamesHartanto";

--
-- Name: linkmoviegenre_id_seq; Type: SEQUENCE; Schema: public; Owner: JamesHartanto
--

CREATE SEQUENCE linkmoviegenre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkmoviegenre_id_seq OWNER TO "JamesHartanto";

--
-- Name: linkmoviegenre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: JamesHartanto
--

ALTER SEQUENCE linkmoviegenre_id_seq OWNED BY linkmoviegenre.id;


--
-- Name: linkmoviepersonrole; Type: TABLE; Schema: public; Owner: JamesHartanto
--

CREATE TABLE linkmoviepersonrole (
    id integer NOT NULL,
    id_person integer NOT NULL,
    id_person_role integer NOT NULL,
    id_movie integer NOT NULL
);


ALTER TABLE linkmoviepersonrole OWNER TO "JamesHartanto";

--
-- Name: linkmoviepersonrole_id_seq; Type: SEQUENCE; Schema: public; Owner: JamesHartanto
--

CREATE SEQUENCE linkmoviepersonrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkmoviepersonrole_id_seq OWNER TO "JamesHartanto";

--
-- Name: linkmoviepersonrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: JamesHartanto
--

ALTER SEQUENCE linkmoviepersonrole_id_seq OWNED BY linkmoviepersonrole.id;


--
-- Name: linkpersonrole_id_seq; Type: SEQUENCE; Schema: public; Owner: JamesHartanto
--

CREATE SEQUENCE linkpersonrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkpersonrole_id_seq OWNER TO "JamesHartanto";

--
-- Name: linkpersonrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: JamesHartanto
--

ALTER SEQUENCE linkpersonrole_id_seq OWNED BY linkmoviepersonrole.id;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: JamesHartanto
--

CREATE TABLE movie (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    date date NOT NULL,
    ratings double precision NOT NULL,
    "length(mins)" integer NOT NULL
);


ALTER TABLE movie OWNER TO "JamesHartanto";

--
-- Name: movie_id_seq; Type: SEQUENCE; Schema: public; Owner: JamesHartanto
--

CREATE SEQUENCE movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_id_seq OWNER TO "JamesHartanto";

--
-- Name: movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: JamesHartanto
--

ALTER SEQUENCE movie_id_seq OWNED BY movie.id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: JamesHartanto
--

CREATE TABLE person (
    id_person integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE person OWNER TO "JamesHartanto";

--
-- Name: person_id_person_seq; Type: SEQUENCE; Schema: public; Owner: JamesHartanto
--

CREATE SEQUENCE person_id_person_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_id_person_seq OWNER TO "JamesHartanto";

--
-- Name: person_id_person_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: JamesHartanto
--

ALTER SEQUENCE person_id_person_seq OWNED BY person.id_person;


--
-- Name: person_role; Type: TABLE; Schema: public; Owner: JamesHartanto
--

CREATE TABLE person_role (
    id_role integer NOT NULL,
    role character varying(30) NOT NULL
);


ALTER TABLE person_role OWNER TO "JamesHartanto";

--
-- Name: person_role_id_role_seq; Type: SEQUENCE; Schema: public; Owner: JamesHartanto
--

CREATE SEQUENCE person_role_id_role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_role_id_role_seq OWNER TO "JamesHartanto";

--
-- Name: person_role_id_role_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: JamesHartanto
--

ALTER SEQUENCE person_role_id_role_seq OWNED BY person_role.id_role;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: JamesHartanto
--

CREATE TABLE reviews (
    metascore integer NOT NULL,
    number_of_critics integer NOT NULL,
    id_reviews integer NOT NULL
);


ALTER TABLE reviews OWNER TO "JamesHartanto";

--
-- Name: reviews_id_reviews_seq; Type: SEQUENCE; Schema: public; Owner: JamesHartanto
--

CREATE SEQUENCE reviews_id_reviews_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reviews_id_reviews_seq OWNER TO "JamesHartanto";

--
-- Name: reviews_id_reviews_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: JamesHartanto
--

ALTER SEQUENCE reviews_id_reviews_seq OWNED BY reviews.id_reviews;


--
-- Name: genre id_genre; Type: DEFAULT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY genre ALTER COLUMN id_genre SET DEFAULT nextval('genre_id_genre_seq'::regclass);


--
-- Name: linkmoviegenre id; Type: DEFAULT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY linkmoviegenre ALTER COLUMN id SET DEFAULT nextval('linkmoviegenre_id_seq'::regclass);


--
-- Name: linkmoviepersonrole id; Type: DEFAULT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY linkmoviepersonrole ALTER COLUMN id SET DEFAULT nextval('linkmoviepersonrole_id_seq'::regclass);


--
-- Name: movie id; Type: DEFAULT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY movie ALTER COLUMN id SET DEFAULT nextval('movie_id_seq'::regclass);


--
-- Name: person id_person; Type: DEFAULT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY person ALTER COLUMN id_person SET DEFAULT nextval('person_id_person_seq'::regclass);


--
-- Name: person_role id_role; Type: DEFAULT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY person_role ALTER COLUMN id_role SET DEFAULT nextval('person_role_id_role_seq'::regclass);


--
-- Name: reviews id_reviews; Type: DEFAULT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY reviews ALTER COLUMN id_reviews SET DEFAULT nextval('reviews_id_reviews_seq'::regclass);


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: JamesHartanto
--

COPY genre (id_genre, type) FROM stdin;
2	Action
3	Adventure
4	Comedy
5	Crime
6	Drama
7	Fantasy
8	Historical
9	Historical fiction
10	Horror
11	Magical realism
12	Mystery
13	Paranoid
14	Philosophical
15	Political
16	Romance
17	Saga
18	Satire
19	Science fiction
20	Slice of life
21	Speculative
22	Thriller
23	Urban
24	Western
1	Animation
25	anime
\.


--
-- Name: genre_id_genre_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('genre_id_genre_seq', 46, true);


--
-- Data for Name: linkmoviegenre; Type: TABLE DATA; Schema: public; Owner: JamesHartanto
--

COPY linkmoviegenre (id, id_movie, id_genre) FROM stdin;
1	1	2
2	1	3
3	2	2
4	2	5
5	2	6
6	3	2
7	3	22
8	4	6
9	4	8
10	5	3
11	5	6
12	5	7
13	6	3
14	6	6
15	6	7
16	7	3
17	7	6
18	7	7
19	8	2
20	8	3
21	8	19
22	9	3
23	9	6
24	9	19
25	10	1
26	10	2
27	10	3
28	11	1
29	11	2
30	11	3
31	12	1
32	12	2
33	12	4
34	13	1
35	13	2
36	13	4
37	14	1
38	14	2
39	14	4
\.


--
-- Name: linkmoviegenre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('linkmoviegenre_id_seq', 36, true);


--
-- Data for Name: linkmoviepersonrole; Type: TABLE DATA; Schema: public; Owner: JamesHartanto
--

COPY linkmoviepersonrole (id, id_person, id_person_role, id_movie) FROM stdin;
59	8	3	13
60	9	4	13
61	10	3	13
62	10	7	13
63	11	5	13
64	12	2	9
65	13	3	9
66	14	3	9
67	15	3	9
68	16	3	9
69	17	5	9
70	18	6	9
71	19	7	9
72	20	3	1
73	21	3	1
74	22	3	1
75	23	3	1
76	24	3	1
77	25	5	1
78	26	4	1
79	27	2	1
80	28	2	1
81	29	3	3
82	30	3	3
83	31	3	2
84	32	3	8
85	33	3	8
86	34	3	8
87	35	6	8
88	36	1	10
89	37	1	10
90	38	3	10
91	39	3	10
1	1	1	9
2	1	2	9
3	1	4	9
4	2	1	13
5	2	2	13
6	3	3	13
7	4	3	13
8	5	3	13
92	40	3	10
93	41	3	10
94	42	4	10
95	43	5	10
96	44	7	10
97	45	3	11
98	46	1	5
99	47	1	5
100	48	2	5
101	49	3	5
102	50	3	5
103	51	3	5
104	52	3	5
105	53	3	5
106	54	3	5
107	55	5	5
108	56	6	5
109	57	7	5
110	58	3	4
111	59	3	4
112	60	1	4
113	61	2	4
114	62	4	4
115	63	5	4
116	64	6	4
117	65	7	4
118	66	3	12
119	67	3	12
120	68	3	12
121	69	3	12
122	70	1	12
123	1	1	1
124	1	1	2
125	1	1	3
126	1	1	8
127	20	3	2
128	20	3	3
129	21	3	2
130	21	3	3
131	22	3	2
132	22	3	3
133	23	3	2
134	23	3	3
135	24	3	2
136	24	3	3
137	17	5	2
138	17	5	3
139	19	7	1
140	19	7	2
141	19	7	3
142	27	2	2
143	27	2	3
144	28	2	2
145	28	2	3
146	16	3	3
147	29	3	8
148	30	3	8
149	34	3	1
150	36	2	10
151	36	1	11
152	36	2	11
153	37	4	11
154	38	3	11
155	39	3	11
156	40	3	11
157	41	3	11
158	42	4	11
159	43	5	11
160	46	2	5
161	46	4	5
162	46	1	6
163	46	2	6
164	46	4	6
165	46	1	7
166	46	2	7
9	6	3	13
10	7	3	13
11	8	2	13
167	46	4	7
168	47	2	5
169	47	4	5
170	47	1	6
171	47	2	6
172	47	4	6
173	47	1	7
174	47	2	7
175	47	4	7
176	48	4	5
177	48	2	6
178	48	4	6
179	48	2	7
180	48	4	7
181	49	3	7
182	50	3	6
183	50	3	7
184	51	3	6
185	51	3	7
186	52	3	6
187	52	3	7
188	53	3	6
189	53	3	7
190	54	3	6
191	54	3	7
192	55	5	6
193	55	5	7
194	56	6	6
195	56	6	7
196	57	7	6
197	57	7	7
198	58	3	1
199	58	3	3
200	60	4	4
201	72	4	12
202	73	5	12
203	74	7	12
204	75	3	14
205	76	3	14
\.


--
-- Name: linkmoviepersonrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('linkmoviepersonrole_id_seq', 1, false);


--
-- Name: linkpersonrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('linkpersonrole_id_seq', 203, true);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: JamesHartanto
--

COPY movie (id, name, date, ratings, "length(mins)") FROM stdin;
1	Batman Begins	2005-06-15	8.30000000000000071	140
2	The Dark Knight	2008-07-18	9	152
3	The Dark Knight Rises	2012-07-20	8.5	164
4	Schindler's List	1994-02-04	8.90000000000000036	195
5	The Lord of the Rings: The Fellowship of the Ring	2001-12-19	8.80000000000000071	178
6	The Lord of the Rings: The Two Towers	2002-12-18	8.69999999999999929	179
7	The Lord of the Rings: The Return of the King	2003-12-17	8.90000000000000036	201
8	Inception	2010-07-16	8.80000000000000071	148
9	Interstellar	2014-11-07	8.59999999999999964	169
10	How to Train Your Dragon	2010-03-26	8.19999999999999929	98
11	How to Train Your Dragon 2	2014-06-13	7.90000000000000036	102
12	Frozen	2013-11-27	7.5	102
13	Wreck-It-Ralph	2012-11-02	7.79999999999999982	101
14	Moana	2016-11-23	81	107
\.


--
-- Name: movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('movie_id_seq', 19, true);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: JamesHartanto
--

COPY person (id_person, name) FROM stdin;
75	Dwayne Johnson
76	Auli'i Cravalho
1	Christopher Nolan
2	Rich Moore
3	John C. Reilly
4	Sarah Silverman
5	Jack McBrayer
6	Jane Lynch
7	Alan Tudyk
8	Phil Johnston
9	Clark Spencer
10	Tim Mertens
11	Henry Jackman
12	Jonathan Nolan
13	Ellen Burstyn
14	Matthew McConaughey
15	Mackenzie Foy
16	Anne Hathaway
17	Hans Zimmer
18	Hoyte Van Hoytema
19	Lee Smith
20	Christian Bale
21	Michael Caine
22	Katie Holmes
23	Gary Oldman
24	Morgan Freeman
25	James Newton
26	Larry J. Franco
27	Bob Kane
28	David S. Goyer
29	Tom Hardy
30	Joseph Gordon-Levitt
31	Heath Ledger
32	Leonardo DiCaprio
33	Ellen Page
34	Ken Watanabe
35	Wally Pfister
36	Dean DeBlois
37	Chris Sanders
38	Jay Baruchel
39	Gerard Butler
40	Craig Ferguson
41	America Ferrera
42	Bonnie Arnold
43	John Powell
44	Maryann Brandon
45	Cate Blanchett
46	Peter Jackson
47	J.R.R. Tolkien
48	Fran Walsh
49	Alan Howard
50	Sean Astin
51	Orlando Bloom
52	Andy Serkis
53	Viggo Mortensen
54	Elijah Wood
55	Howard Shore
56	Andrew Lesnie
57	John Gilbert
58	Liam Neeson
59	Ben Kingsley
60	Steven Spielberg
61	Thomas Keneally
62	Branko Lustig
63	John Williams
64	Janusz Kaminski
65	Michael Kahn
66	Kristen Bell
67	Idina Menzel
68	Jonathan Groff
69	Josh Gad
70	Chris Buck
71	Jennifer Lee
72	Peter Del Vecho
73	Christophe Beck
74	Jeff Draheim
\.


--
-- Name: person_id_person_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('person_id_person_seq', 84, true);


--
-- Data for Name: person_role; Type: TABLE DATA; Schema: public; Owner: JamesHartanto
--

COPY person_role (id_role, role) FROM stdin;
1	Director
2	Writer
3	Actor/Actress
4	Producer
5	Music
6	Cinematography
7	Editor
\.


--
-- Name: person_role_id_role_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('person_role_id_role_seq', 7, true);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: JamesHartanto
--

COPY reviews (metascore, number_of_critics, id_reviews) FROM stdin;
70	41	1
82	39	2
78	45	3
93	23	4
92	34	5
88	38	6
94	41	7
74	42	8
74	46	9
74	33	10
76	39	11
74	43	12
72	36	13
81	44	14
\.


--
-- Name: reviews_id_reviews_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('reviews_id_reviews_seq', 15, true);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id_genre);


--
-- Name: linkmoviegenre linkmoviegenre_pkey; Type: CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY linkmoviegenre
    ADD CONSTRAINT linkmoviegenre_pkey PRIMARY KEY (id);


--
-- Name: linkmoviepersonrole linkmoviepersonrole_id_pk; Type: CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY linkmoviepersonrole
    ADD CONSTRAINT linkmoviepersonrole_id_pk PRIMARY KEY (id);


--
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);


--
-- Name: person person_id_person_pk; Type: CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_id_person_pk PRIMARY KEY (id_person);


--
-- Name: person_role person_role_id_role_pk; Type: CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY person_role
    ADD CONSTRAINT person_role_id_role_pk PRIMARY KEY (id_role);


--
-- Name: reviews reviews_id_reviews_pk; Type: CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_id_reviews_pk PRIMARY KEY (id_reviews);


--
-- Name: genre_id_genre_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX genre_id_genre_uindex ON genre USING btree (id_genre);


--
-- Name: genre_type_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX genre_type_uindex ON genre USING btree (type);


--
-- Name: linkPersonRole_id_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX "linkPersonRole_id_uindex" ON linkmoviepersonrole USING btree (id);


--
-- Name: linkmoviegenre_id_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX linkmoviegenre_id_uindex ON linkmoviegenre USING btree (id);


--
-- Name: movie_id_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX movie_id_uindex ON movie USING btree (id);


--
-- Name: movie_name_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX movie_name_uindex ON movie USING btree (name);


--
-- Name: person_id_person_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX person_id_person_uindex ON person USING btree (id_person);


--
-- Name: person_name_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX person_name_uindex ON person USING btree (name);


--
-- Name: person_role_id_role_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX person_role_id_role_uindex ON person_role USING btree (id_role);


--
-- Name: person_role_role_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX person_role_role_uindex ON person_role USING btree (role);


--
-- Name: reviews_id_reviews_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX reviews_id_reviews_uindex ON reviews USING btree (id_reviews);


--
-- Name: linkmoviegenre linkmoviegenre_genre_id_genre_fk; Type: FK CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY linkmoviegenre
    ADD CONSTRAINT linkmoviegenre_genre_id_genre_fk FOREIGN KEY (id_genre) REFERENCES genre(id_genre);


--
-- Name: linkmoviegenre linkmoviegenre_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY linkmoviegenre
    ADD CONSTRAINT linkmoviegenre_movie_id_fk FOREIGN KEY (id_movie) REFERENCES movie(id);


--
-- Name: linkmoviepersonrole linkmoviepersonrole_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY linkmoviepersonrole
    ADD CONSTRAINT linkmoviepersonrole_movie_id_fk FOREIGN KEY (id_movie) REFERENCES movie(id);


--
-- Name: linkmoviepersonrole linkmoviepersonrole_person_id_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY linkmoviepersonrole
    ADD CONSTRAINT linkmoviepersonrole_person_id_person_fk FOREIGN KEY (id_person) REFERENCES person(id_person);


--
-- Name: linkmoviepersonrole linkmoviepersonrole_person_role_id_role_fk; Type: FK CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY linkmoviepersonrole
    ADD CONSTRAINT linkmoviepersonrole_person_role_id_role_fk FOREIGN KEY (id_person_role) REFERENCES person_role(id_role);


--
-- Name: reviews reviews_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_movie_id_fk FOREIGN KEY (id_reviews) REFERENCES movie(id);


--
-- PostgreSQL database dump complete
--

