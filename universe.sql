--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    type text,
    distance_from_earth integer,
    diameter numeric,
    mass integer,
    number_of_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet character varying(20),
    period numeric(4,1) NOT NULL,
    diameter integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer,
    radius integer,
    temperature integer,
    day_length numeric(4,1),
    year_length integer,
    num_of_moons integer,
    has_rings boolean,
    is_round boolean,
    has_life boolean,
    spins_clockwise boolean,
    size text,
    type text,
    star character varying(20),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation character varying(20) NOT NULL,
    distance integer NOT NULL,
    visible_magnitude numeric(4,1),
    galaxy character varying(20),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: tables; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tables (
    name character varying(20) NOT NULL,
    type character varying(10) NOT NULL,
    database character varying(10) NOT NULL,
    tables_id integer NOT NULL
);


ALTER TABLE public.tables OWNER TO freecodecamp;

--
-- Name: tables_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tables_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tables_table_id_seq OWNER TO freecodecamp;

--
-- Name: tables_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tables_table_id_seq OWNED BY public.tables.tables_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: tables tables_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tables ALTER COLUMN tables_id SET DEFAULT nextval('public.tables_table_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Magellanic clouds', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', 27.3, 3476, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars', 0.3, 23, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars', 1.3, 13, 4);
INSERT INTO public.moon VALUES (4, 'Thebe', 'Jupiter', 0.7, 90, 5);
INSERT INTO public.moon VALUES (5, 'Io', 'Jupiter', 1.8, 3630, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 'Jupiter', 3.6, 3138, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'Jupiter', 7.2, 5262, 5);
INSERT INTO public.moon VALUES (8, 'Callisto', 'Jupiter', 16.7, 4800, 5);
INSERT INTO public.moon VALUES (9, 'Pan', 'Saturn', 0.6, 20, 6);
INSERT INTO public.moon VALUES (10, 'Atlas', 'Saturn', 0.6, 40, 6);
INSERT INTO public.moon VALUES (11, 'Prometheus', 'Saturn', 0.6, 80, 6);
INSERT INTO public.moon VALUES (12, 'Pandora', 'Saturn', 0.6, 100, 6);
INSERT INTO public.moon VALUES (13, 'Dione', 'Saturn', 2.7, 1120, 6);
INSERT INTO public.moon VALUES (14, 'Reah', 'Saturn', 4.5, 1530, 6);
INSERT INTO public.moon VALUES (15, 'Titan', 'Saturn', 16.0, 5150, 6);
INSERT INTO public.moon VALUES (16, 'Hyperion', 'Saturn', 21.3, 270, 6);
INSERT INTO public.moon VALUES (17, 'Ariel', 'Uranus', 2.5, 1160, 7);
INSERT INTO public.moon VALUES (18, 'Titania', 'Uranus', 8.7, 1610, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 'Uranus', 13.5, 1550, 7);
INSERT INTO public.moon VALUES (20, 'Despina', 'Neptune', 0.3, 150, 8);
INSERT INTO public.moon VALUES (21, 'Galatea', 'Neptune', 0.4, 150, 8);
INSERT INTO public.moon VALUES (22, 'Larissa', 'Neptune', 1.1, 400, 8);
INSERT INTO public.moon VALUES (23, 'Triton', 'Neptune', 5.9, 2720, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 'Ceres', 257000000, 296, 235, 9.0, 1682, 0, false, true, false, false, 'Small', 'Dwarf', 'Alpheratz', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 2000000000, 15387, -331, 16.0, 165, 14, true, true, false, false, 'Large', 'Ice giant', 'Nembus', 2);
INSERT INTO public.planet VALUES (12, 'Makemake', 425300000, 444, 40, 22.0, 305, 1, false, true, false, false, 'Small', 'Dwarf', 'Nembus', 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 1785541189, 15881, -320, 17.0, 84, 27, true, true, false, true, 'Large', 'Ice giant', 'Choo', 3);
INSERT INTO public.planet VALUES (11, 'Haumea', 400000000, 1080, 50, 4.0, 283, 2, true, false, false, false, 'Small', 'Dwarf', 'Choo', 3);
INSERT INTO public.planet VALUES (2, 'Venus', 67232363, 3761, 900, 248.0, 225, 0, false, true, false, true, 'Small', 'Terrestrial', 'Cervantes', 4);
INSERT INTO public.planet VALUES (6, 'Saturn', 885205400, 37448, -218, 10.7, 29, 82, true, true, false, false, 'Large', 'Gas giant', 'Dabih', 5);
INSERT INTO public.planet VALUES (5, 'Jupiter', 483631840, 44423, -162, 9.9, 11, 79, true, true, false, false, 'Large', 'Gas giant', 'Deneb', 6);
INSERT INTO public.planet VALUES (10, 'Pluto', 370000000, 1188, -387, 153.0, 248, 5, false, true, false, true, 'Small', 'Dwarf', 'Nihal', 7);
INSERT INTO public.planet VALUES (3, 'Earth', 92957130, 3959, 57, 23.9, 365, 1, false, true, true, false, 'Small', 'Terrestrial', 'Bellatrix', 8);
INSERT INTO public.planet VALUES (4, 'Mars', 141635349, 2113, 70, 24.6, 687, 2, false, true, false, false, 'small', 'Terrestrial', 'Bellatrix', 8);
INSERT INTO public.planet VALUES (1, 'Mercury', 35983605, 1516, 800, 59.0, 87, 0, false, true, false, false, 'Small', 'Terrestrial', 'Nash', 9);
INSERT INTO public.planet VALUES (13, 'Eris', 630000000, 1500, 42, 26.0, 557, 1, false, true, false, false, 'Small', 'Dwarf', 'Nash', 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 'Andromeda', 97, 2.1, 'Milky Way', 2);
INSERT INTO public.star VALUES (2, 'Nembus', 'Andromeda', 174, 3.6, 'Milky Way', 2);
INSERT INTO public.star VALUES (3, 'Choo', 'Ara', 142, 2.8, 'Milky Way', 2);
INSERT INTO public.star VALUES (4, 'Cervantes', 'Ara', 50, 5.1, 'Milky Way', 2);
INSERT INTO public.star VALUES (5, 'Dabih', 'Capricornus', 328, 3.1, 'Milky Way', 2);
INSERT INTO public.star VALUES (6, 'Deneb', 'Cygnus', 2615, 1.3, 'Milky Way', 2);
INSERT INTO public.star VALUES (7, 'Nihal', 'Lepus', 159, 2.8, 'Milky Way', 2);
INSERT INTO public.star VALUES (8, 'Bellatrix', 'Orion', 243, 1.6, 'Milky Way', 2);
INSERT INTO public.star VALUES (9, 'Nash', 'Sagittarius', 2076, 4.7, 'Milky Way', 2);


--
-- Data for Name: tables; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tables VALUES ('galaxy', 'table', 'universe', 1);
INSERT INTO public.tables VALUES ('star', 'table', 'universe', 2);
INSERT INTO public.tables VALUES ('planet', 'table', 'universe', 3);
INSERT INTO public.tables VALUES ('moon', 'table', 'universe', 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: tables_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tables_table_id_seq', 4, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: tables tables_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_pkey PRIMARY KEY (tables_id);


--
-- Name: tables tables_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_table_id_key UNIQUE (tables_id);


--
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

