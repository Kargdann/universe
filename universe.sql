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
-- Name: capital; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.capital (
    capital_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.capital OWNER TO freecodecamp;

--
-- Name: capital_capital_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.capital_capital_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.capital_capital_id_seq OWNER TO freecodecamp;

--
-- Name: capital_capital_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.capital_capital_id_seq OWNED BY public.capital.capital_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    app_diameter numeric(2,1),
    app_magn_p integer,
    ci text
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
    name character varying(255),
    planet_id integer NOT NULL,
    orbital_period integer,
    atmosphere boolean
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
    name character varying(255),
    star_id integer NOT NULL,
    mass numeric(3,1),
    radius numeric(3,1)
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
    name character varying(255),
    galaxy_id integer NOT NULL,
    has_planets boolean,
    planet_count numeric
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
-- Name: capital capital_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.capital ALTER COLUMN capital_id SET DEFAULT nextval('public.capital_capital_id_seq'::regclass);


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
-- Data for Name: capital; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.capital VALUES (1, 2, 'Paris');
INSERT INTO public.capital VALUES (2, 6, 'Seville');
INSERT INTO public.capital VALUES (3, 3, 'Rabat');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'NGC1', 1.9, 13, 'GC 1 .dA 1.');
INSERT INTO public.galaxy VALUES (2, 'NGC2', 1.4, 15, 'GC 6246. Ld R*.');
INSERT INTO public.galaxy VALUES (3, 'NGC3', NULL, 14, 'GC 5080. Marth 1.');
INSERT INTO public.galaxy VALUES (4, 'NGC9', 1.5, 15, 'GC 5083. O Struve.');
INSERT INTO public.galaxy VALUES (5, 'NGC12', 1.9, 15, 'GC 4, h 1, H 3.868.');
INSERT INTO public.galaxy VALUES (6, 'NGC237', 1.8, 14, 'Swift VI.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 1, 3, false);
INSERT INTO public.moon VALUES (2, 'Moon2', 2, 4, false);
INSERT INTO public.moon VALUES (3, 'Moon3', 3, 1, false);
INSERT INTO public.moon VALUES (4, 'Moon4', 4, 2, true);
INSERT INTO public.moon VALUES (5, 'Moon5', 5, 8, false);
INSERT INTO public.moon VALUES (6, 'Moon6', 6, 2, false);
INSERT INTO public.moon VALUES (7, 'Moon7', 7, 3, false);
INSERT INTO public.moon VALUES (8, 'Moon8', 8, 1, false);
INSERT INTO public.moon VALUES (9, 'Moon9', 9, 3, true);
INSERT INTO public.moon VALUES (10, 'Moon10', 10, 3, false);
INSERT INTO public.moon VALUES (11, 'Moon11', 11, 86, true);
INSERT INTO public.moon VALUES (12, 'Moon12', 12, 43, false);
INSERT INTO public.moon VALUES (13, 'Moon13', 1, 3, false);
INSERT INTO public.moon VALUES (14, 'Moon14', 2, 7, false);
INSERT INTO public.moon VALUES (15, 'Moon15', 3, 47, false);
INSERT INTO public.moon VALUES (16, 'Moon16', 4, 42, false);
INSERT INTO public.moon VALUES (17, 'Moon17', 5, 6, true);
INSERT INTO public.moon VALUES (18, 'Moon18', 6, 3, false);
INSERT INTO public.moon VALUES (19, 'Moon19', 8, 24, false);
INSERT INTO public.moon VALUES (20, 'Moon20', 12, 99, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'HD 102272 b', 4, 5.9, NULL);
INSERT INTO public.planet VALUES (2, 'Cl Tau c', 2, 3.6, NULL);
INSERT INTO public.planet VALUES (3, 'TOI-4987 b', 3, 12.3, 1.9);
INSERT INTO public.planet VALUES (4, 'HIP 64892 b', 5, 33.0, NULL);
INSERT INTO public.planet VALUES (5, 'HD 46588 c', 1, 52.0, 14.0);
INSERT INTO public.planet VALUES (6, 'Ross 458 (AB) c', 4, 11.3, 1.0);
INSERT INTO public.planet VALUES (7, 'Hd 104067 d', 1, NULL, 0.1);
INSERT INTO public.planet VALUES (8, 'Mercury', 6, 3.3, 4.8);
INSERT INTO public.planet VALUES (9, 'Venus', 6, 4.8, 6.0);
INSERT INTO public.planet VALUES (10, 'Earth', 6, 5.9, 6.3);
INSERT INTO public.planet VALUES (11, 'Mars', 6, 6.4, 3.3);
INSERT INTO public.planet VALUES (12, 'Jupiter', 6, 1.8, 69.9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'HD104067', 1, true, 2);
INSERT INTO public.star VALUES (2, 'CI Tau', 2, true, 1);
INSERT INTO public.star VALUES (3, 'TOI-4987', 3, true, 1);
INSERT INTO public.star VALUES (4, 'HD102272', 4, true, 2);
INSERT INTO public.star VALUES (5, 'HIP64892', 5, true, 1);
INSERT INTO public.star VALUES (6, 'Sol', 6, true, 5);


--
-- Name: capital_capital_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.capital_capital_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: capital capital_capital_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.capital
    ADD CONSTRAINT capital_capital_id_key UNIQUE (capital_id);


--
-- Name: capital capital_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.capital
    ADD CONSTRAINT capital_pkey PRIMARY KEY (capital_id);


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
-- Name: capital capital_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.capital
    ADD CONSTRAINT capital_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- PostgreSQL database dump complete
--

