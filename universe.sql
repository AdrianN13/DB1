--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    planet_id integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    distance_from_sun numeric,
    age integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    age integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: useless; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.useless (
    useless_id integer NOT NULL,
    name character varying,
    age integer NOT NULL
);


ALTER TABLE public.useless OWNER TO freecodecamp;

--
-- Name: useless_table_useless_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.useless_table_useless_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.useless_table_useless_id_seq OWNER TO freecodecamp;

--
-- Name: useless_table_useless_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.useless_table_useless_id_seq OWNED BY public.useless.useless_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: useless useless_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.useless ALTER COLUMN useless_id SET DEFAULT nextval('public.useless_table_useless_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Galaxy that includes the Solar System', true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cygnus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Virgo A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Antennae', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Fobos', NULL, 5, NULL);
INSERT INTO public.moon VALUES (4, 'Deimos', NULL, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, 6, NULL);
INSERT INTO public.moon VALUES (6, 'Genimedes', NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, 'Kallisto', NULL, 6, NULL);
INSERT INTO public.moon VALUES (8, 'Karpo', NULL, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Ananke', NULL, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Tebe', NULL, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Aoede', NULL, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Isonoe', NULL, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Cyllene', NULL, 6, NULL);
INSERT INTO public.moon VALUES (14, 'Eufeme', NULL, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Arche', NULL, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Kalyke', NULL, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Tytan', NULL, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Mimas', NULL, 7, NULL);
INSERT INTO public.moon VALUES (19, 'Japet', NULL, 7, NULL);
INSERT INTO public.moon VALUES (20, 'Hyperion', NULL, 7, NULL);
INSERT INTO public.moon VALUES (21, 'Dione', NULL, 7, NULL);
INSERT INTO public.moon VALUES (22, 'Telesto', NULL, 7, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'Earth', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, 'Mars', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Jupiter', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Saturn', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'Uranus', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (9, 'Neptune', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'Pluto', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, 'Eris', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Makeme', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (13, 'Ceres', NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'North Star', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Sirius', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Canopus', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Vega', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Rigel', 1, NULL, NULL);


--
-- Data for Name: useless; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.useless VALUES (1, NULL, 1);
INSERT INTO public.useless VALUES (2, NULL, 2);
INSERT INTO public.useless VALUES (3, NULL, 3);
INSERT INTO public.useless VALUES (4, NULL, 4);
INSERT INTO public.useless VALUES (5, NULL, 5);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: useless_table_useless_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.useless_table_useless_id_seq', 5, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id UNIQUE (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: useless unique_useless_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.useless
    ADD CONSTRAINT unique_useless_id UNIQUE (useless_id);


--
-- Name: useless useless_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.useless
    ADD CONSTRAINT useless_table_pkey PRIMARY KEY (useless_id);


--
-- Name: star galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

