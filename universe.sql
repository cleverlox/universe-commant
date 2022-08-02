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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    space_franchise character varying(30),
    people_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    made_of_cheese boolean,
    visible_from_planet boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: people; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.people (
    people_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    favorite_number integer
);


ALTER TABLE public.people OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth character varying(30),
    has_life boolean NOT NULL,
    star_id integer,
    mass numeric(7,3),
    how_many_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    constellation character varying(30),
    luminosity integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our galaxy', 'Star Trek', 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The galaxy the Guardians guard', 'Guardians of the Galaxy', 4);
INSERT INTO public.galaxy VALUES (3, 'Black', 'Where Ego resides', 'Guardians of the Galaxy 2', 3);
INSERT INTO public.galaxy VALUES (4, 'Star War', 'Far far away', 'Star Wars', NULL);
INSERT INTO public.galaxy VALUES (5, 'Large Cloud', 'Home to the Kree', 'Captain Marvel', NULL);
INSERT INTO public.galaxy VALUES (6, 'My own', 'Where I live', 'My personal space', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ghomrassen', 5, false, true);
INSERT INTO public.moon VALUES (2, 'Toms', 6, false, true);
INSERT INTO public.moon VALUES (3, 'Alter Ego', 7, false, false);
INSERT INTO public.moon VALUES (4, 'The Moon', 2, true, true);
INSERT INTO public.moon VALUES (5, 'Luna1', 8, false, true);
INSERT INTO public.moon VALUES (6, 'Luna2', 8, false, true);
INSERT INTO public.moon VALUES (7, 'Luna3', 9, false, false);
INSERT INTO public.moon VALUES (8, 'Hydra', 9, false, true);
INSERT INTO public.moon VALUES (9, 'Charon', 9, false, true);
INSERT INTO public.moon VALUES (10, 'Tian', 11, false, true);
INSERT INTO public.moon VALUES (11, 'Phoebe', 11, false, true);
INSERT INTO public.moon VALUES (12, 'Io', 12, false, true);
INSERT INTO public.moon VALUES (13, 'pdai', 12, false, true);
INSERT INTO public.moon VALUES (14, 'sfsuj', 12, false, true);
INSERT INTO public.moon VALUES (15, 'vfhh', 12, false, true);
INSERT INTO public.moon VALUES (16, 'fahj', 12, false, false);
INSERT INTO public.moon VALUES (17, 'hadha', 11, false, false);
INSERT INTO public.moon VALUES (18, 'hahsw', 10, false, false);
INSERT INTO public.moon VALUES (19, 'tasf', 10, false, false);
INSERT INTO public.moon VALUES (20, 'ttas', 10, false, false);


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.people VALUES (1, 'dakak', 50, 11);
INSERT INTO public.people VALUES (2, 'augd', 19, 1136);
INSERT INTO public.people VALUES (3, 'ftscg', 34, 456);
INSERT INTO public.people VALUES (4, 'gfysgua', 12, 5674);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Hala', '200 light years', true, NULL, NULL, 0);
INSERT INTO public.planet VALUES (2, 'Earth', '0', true, NULL, 5.970, 1);
INSERT INTO public.planet VALUES (3, 'Asgard', '2.6 million light years', true, NULL, NULL, 0);
INSERT INTO public.planet VALUES (4, 'Xander', '2.5 million light years', true, NULL, NULL, 0);
INSERT INTO public.planet VALUES (5, 'jgrs', 'dqf', true, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'dadd', 'fwgf', true, NULL, NULL, 2);
INSERT INTO public.planet VALUES (7, 'evey', 'sbcu', true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'sjb', 'shj', false, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'gdsgu', 'sfgui', false, NULL, 0.013, 5);
INSERT INTO public.planet VALUES (10, 'daf', 'fadw', false, NULL, 0.642, 2);
INSERT INTO public.planet VALUES (11, 'qdf', 'aaf', false, NULL, 568.000, 82);
INSERT INTO public.planet VALUES (12, 'ddwqaf', 'awefe', false, NULL, 1898.000, 79);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, 'none', 1);
INSERT INTO public.star VALUES (2, 'fsbj', 5, 'none', NULL);
INSERT INTO public.star VALUES (3, 'fsfa', 4, 'none', NULL);
INSERT INTO public.star VALUES (4, 'add', 1, 'ursa', 1260);
INSERT INTO public.star VALUES (5, 'dwd', 1, 'canis', 25);
INSERT INTO public.star VALUES (6, 'adf', 1, 'ursa', 108);


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
-- Name: star name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: people people_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_name_key UNIQUE (name);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (people_id);


--
-- Name: planet planet_name_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_pk UNIQUE (name);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_people_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_people_id_fkey FOREIGN KEY (people_id) REFERENCES public.people(people_id);


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

