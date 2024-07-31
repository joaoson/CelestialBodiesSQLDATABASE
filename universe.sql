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
-- Name: blackholes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackholes (
    blackholes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size double precision
);


ALTER TABLE public.blackholes OWNER TO freecodecamp;

--
-- Name: blackholes_blackholes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackholes_blackholes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackholes_blackholes_id_seq OWNER TO freecodecamp;

--
-- Name: blackholes_blackholes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackholes_blackholes_id_seq OWNED BY public.blackholes.blackholes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    numberofplanets integer,
    size double precision,
    age integer
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    haslife boolean,
    planet_id integer,
    hascraters boolean
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    haslife boolean,
    population integer,
    description text,
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    lumens numeric,
    galaxy_id integer,
    temperature double precision
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
-- Name: blackholes blackholes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes ALTER COLUMN blackholes_id SET DEFAULT nextval('public.blackholes_blackholes_id_seq'::regclass);


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
-- Data for Name: blackholes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackholes VALUES (1, 'Blackgole', 2020);
INSERT INTO public.blackholes VALUES (2, 'BLackhole', 203232);
INSERT INTO public.blackholes VALUES (3, 'Buraco Negro', 32323);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 8, 100000, 13700);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 7, 220000, 1000);
INSERT INTO public.galaxy VALUES ('Triangulum', 3, 3, 60000, 1200);
INSERT INTO public.galaxy VALUES ('Whirlpool', 4, 5, 76000, 140);
INSERT INTO public.galaxy VALUES ('Sombrero', 5, 2, 49000, 900);
INSERT INTO public.galaxy VALUES ('Cartwheel', 6, 4, 150000, 500);
INSERT INTO public.galaxy VALUES ('Black Eye', 7, 5, 42000, 110000);
INSERT INTO public.galaxy VALUES ('Messier 87', 8, 4, 240000, 1300);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, false, 1, true);
INSERT INTO public.moon VALUES ('Phobos', 2, false, 2, true);
INSERT INTO public.moon VALUES ('Deimos', 3, false, 2, true);
INSERT INTO public.moon VALUES ('Europa', 4, false, 3, true);
INSERT INTO public.moon VALUES ('Ganymede', 5, false, 3, true);
INSERT INTO public.moon VALUES ('Callisto', 6, false, 3, true);
INSERT INTO public.moon VALUES ('Io', 7, false, 3, true);
INSERT INTO public.moon VALUES ('Titan', 8, false, 10, true);
INSERT INTO public.moon VALUES ('Rhea', 9, false, 10, true);
INSERT INTO public.moon VALUES ('Iapetus', 10, false, 10, true);
INSERT INTO public.moon VALUES ('Dione', 11, false, 10, true);
INSERT INTO public.moon VALUES ('Tethys', 12, false, 10, true);
INSERT INTO public.moon VALUES ('Enceladus', 13, false, 10, true);
INSERT INTO public.moon VALUES ('Mimas', 14, false, 10, true);
INSERT INTO public.moon VALUES ('Oberon', 15, false, 3, true);
INSERT INTO public.moon VALUES ('Titania', 16, false, 3, true);
INSERT INTO public.moon VALUES ('Ariel', 17, false, 3, true);
INSERT INTO public.moon VALUES ('Umbriel', 18, false, 3, true);
INSERT INTO public.moon VALUES ('Miranda', 19, false, 3, true);
INSERT INTO public.moon VALUES ('Triton', 20, false, 3, true);
INSERT INTO public.moon VALUES ('Nereid', 21, false, 3, true);
INSERT INTO public.moon VALUES ('Proteus', 22, false, 3, true);
INSERT INTO public.moon VALUES ('Larissa', 23, false, 3, true);
INSERT INTO public.moon VALUES ('Galatea', 24, false, 3, true);
INSERT INTO public.moon VALUES ('Despina', 25, false, 3, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, true, 78000, 'The only planet known to support life', 1);
INSERT INTO public.planet VALUES ('Mars', 2, false, 0, 'The Red Planet, potential for future colonization', 1);
INSERT INTO public.planet VALUES ('Jupiter', 3, false, 0, 'The largest planet in the Solar System', 1);
INSERT INTO public.planet VALUES ('Proxima b', 4, false, 0, 'An exoplanet orbiting Proxima Centauri', 2);
INSERT INTO public.planet VALUES ('Sirius B', 5, false, 0, 'A white dwarf star orbiting Sirius', 3);
INSERT INTO public.planet VALUES ('Vega I', 6, false, 0, 'A hypothetical planet orbiting Vega', 4);
INSERT INTO public.planet VALUES ('Betelgeuse I', 7, false, 0, 'A planet orbiting Betelgeuse', 5);
INSERT INTO public.planet VALUES ('Rigel I', 8, false, 0, 'A planet orbiting Rigel', 6);
INSERT INTO public.planet VALUES ('Polaris Ab', 9, false, 0, 'A planet orbiting Polaris', 7);
INSERT INTO public.planet VALUES ('Aldebaran b', 10, false, 0, 'A gas giant orbiting Aldebaran', 8);
INSERT INTO public.planet VALUES ('Titan', 11, false, 0, 'A moon of Saturn, speculated to have life', 1);
INSERT INTO public.planet VALUES ('Europa', 12, false, 0, 'A moon of Jupiter, speculated to have life', 1);
INSERT INTO public.planet VALUES ('Ganymede', 13, false, 0, 'The largest moon of Jupiter', 1);
INSERT INTO public.planet VALUES ('Callisto', 14, false, 0, 'A moon of Jupiter', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 384600000000000000000000000, 1, 5778);
INSERT INTO public.star VALUES ('Proxima Centauri', 2, 5800000000000000000000000, 1, 3042);
INSERT INTO public.star VALUES ('Sirius', 3, 2025000000000000000000000000, 2, 9940);
INSERT INTO public.star VALUES ('Vega', 4, 4300000000000000000000000000, 3, 9602);
INSERT INTO public.star VALUES ('Betelgeuse', 5, 1270000000000000000000000000000, 4, 3500);
INSERT INTO public.star VALUES ('Rigel', 6, 12000000000000000000000000000000, 5, 11000);
INSERT INTO public.star VALUES ('Polaris', 7, 5000000000000000000000000000, 6, 6015);
INSERT INTO public.star VALUES ('Aldebaran', 8, 509000000000000000000000000000, 7, 3910);


--
-- Name: blackholes_blackholes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackholes_blackholes_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: blackholes blackholes_blackholes_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_blackholes_id_key UNIQUE (blackholes_id);


--
-- Name: blackholes blackholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_pkey PRIMARY KEY (blackholes_id);


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

