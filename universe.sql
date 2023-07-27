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
    name character varying(60),
    galaxy_id integer NOT NULL,
    size numeric,
    comment text,
    visited boolean,
    numbers_planets integer NOT NULL
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
    name character varying(60),
    moon_id integer NOT NULL,
    size numeric NOT NULL,
    trajectory text,
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
    name character varying(60),
    planet_id integer NOT NULL,
    size numeric NOT NULL,
    inhabited boolean,
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
    name character varying(60),
    star_id integer NOT NULL,
    size numeric,
    shiny boolean,
    galaxy_id integer NOT NULL
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
-- Name: travel_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.travel_mission (
    name character varying(60),
    travel_mission_id integer NOT NULL,
    planet_id integer,
    number_participant integer NOT NULL
);


ALTER TABLE public.travel_mission OWNER TO freecodecamp;

--
-- Name: travel_mission_travel_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.travel_mission_travel_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.travel_mission_travel_mission_id_seq OWNER TO freecodecamp;

--
-- Name: travel_mission_travel_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.travel_mission_travel_mission_id_seq OWNED BY public.travel_mission.travel_mission_id;


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
-- Name: travel_mission travel_mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel_mission ALTER COLUMN travel_mission_id SET DEFAULT nextval('public.travel_mission_travel_mission_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Joie', 1, 4.1, 'lovely to see and uplifting to live in', NULL, 78);
INSERT INTO public.galaxy VALUES ('Tristesse', 2, 87.1, 'Gloomy but interesting', NULL, 3);
INSERT INTO public.galaxy VALUES ('Bonheur', 3, 100.48, 'Swell and fun', NULL, 3507);
INSERT INTO public.galaxy VALUES ('Peur', 4, 2.1, 'Sticky but not paralyzing', true, 1000);
INSERT INTO public.galaxy VALUES ('Colère', 5, 100.00, 'Needs to breathe in and out', false, 5);
INSERT INTO public.galaxy VALUES ('Surprise', 6, 44444.4, 'Absolutely thrilling', true, 6546585);
INSERT INTO public.galaxy VALUES ('Dégout', 7, 0.5, 'Can cause nosebleeds', true, 9647);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('abricot', 1, 1, 'elipse', 3);
INSERT INTO public.moon VALUES ('fruits_secs', 2, 2, 'carre', 1);
INSERT INTO public.moon VALUES ('soupe', 3, 30, 'ronde', 4);
INSERT INTO public.moon VALUES ('imprevu', 4, 1, 'inconnu', 8);
INSERT INTO public.moon VALUES ('Dyptique', 5, 300, 'joyeuse', 11);
INSERT INTO public.moon VALUES ('Agent_Nateur', 6, 1000, 'ageless', 11);
INSERT INTO public.moon VALUES ('Foret', 7, 400, 'pur', 2);
INSERT INTO public.moon VALUES ('Paris', 8, 100, 'cosmopolite', 12);
INSERT INTO public.moon VALUES ('La_nuit', 9, 10, 'bleue', 5);
INSERT INTO public.moon VALUES ('un_reve', 10, 800, 'incroyable', 6);
INSERT INTO public.moon VALUES ('moon_11', 11, 11, 'paralele', 13);
INSERT INTO public.moon VALUES ('moon_12', 12, 12, 'autre', 13);
INSERT INTO public.moon VALUES ('moon_13', 13, 13, 'autre', 13);
INSERT INTO public.moon VALUES ('moon_14', 14, 14, 'autre', 13);
INSERT INTO public.moon VALUES ('moon_15', 15, 15, 'autre', 13);
INSERT INTO public.moon VALUES ('moon_16', 16, 16, 'autre', 13);
INSERT INTO public.moon VALUES ('moon_17', 17, 17, 'autre', 13);
INSERT INTO public.moon VALUES ('moon_18', 18, 18, 'autre', 13);
INSERT INTO public.moon VALUES ('moon_19', 19, 19, 'autre', 13);
INSERT INTO public.moon VALUES ('moon_20', 20, 20, 'autre', 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Petit_dejeuner', 1, 20, true, 1);
INSERT INTO public.planet VALUES ('Gouter', 2, 5, true, 1);
INSERT INTO public.planet VALUES ('Dejeuner', 3, 15, true, 1);
INSERT INTO public.planet VALUES ('Diner', 4, 10, true, 1);
INSERT INTO public.planet VALUES ('Souris', 5, 1, false, 2);
INSERT INTO public.planet VALUES ('Avalanche', 6, 700, false, 2);
INSERT INTO public.planet VALUES ('Misere', 7, 500, true, 7);
INSERT INTO public.planet VALUES ('Betise', 8, 100, true, 2);
INSERT INTO public.planet VALUES ('Mechancete', 9, 400, true, 2);
INSERT INTO public.planet VALUES ('Dispute', 10, 50, true, 7);
INSERT INTO public.planet VALUES ('Un_parfum', 11, 100, true, 4);
INSERT INTO public.planet VALUES ('Une_cool_expo', 12, 50, true, 3);
INSERT INTO public.planet VALUES ('Une_blague', 13, 10, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Croissant', 1, 10, true, 1);
INSERT INTO public.star VALUES ('Un_bon_livre', 3, 50, true, 2);
INSERT INTO public.star VALUES ('Une_bougie', 4, 14, true, 3);
INSERT INTO public.star VALUES ('Araignee', 2, 1, false, 4);
INSERT INTO public.star VALUES ('Cadeau', 5, NULL, NULL, 6);
INSERT INTO public.star VALUES ('Une_promenage_en_foret', 6, NULL, NULL, 3);
INSERT INTO public.star VALUES ('Injustice', 7, NULL, NULL, 5);


--
-- Data for Name: travel_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.travel_mission VALUES ('first', 1, 1, 1);
INSERT INTO public.travel_mission VALUES ('apres_midi', 2, 3, 1);
INSERT INTO public.travel_mission VALUES ('un_bon_moment', 3, 13, 40);
INSERT INTO public.travel_mission VALUES ('un_cycle', 4, 7, 40);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: travel_mission_travel_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.travel_mission_travel_mission_id_seq', 4, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: travel_mission travel_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel_mission
    ADD CONSTRAINT travel_mission_pkey PRIMARY KEY (travel_mission_id);


--
-- Name: travel_mission travel_mission_travel_mission_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel_mission
    ADD CONSTRAINT travel_mission_travel_mission_id_key UNIQUE (travel_mission_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: travel_mission travel_mission_start_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel_mission
    ADD CONSTRAINT travel_mission_start_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

