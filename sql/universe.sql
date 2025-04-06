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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    hemisphere character varying(30)
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    galaxy_types character varying(30) NOT NULL,
    is_active boolean,
    location_in_universe character varying(100)
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
    name character varying(50),
    age_in_million_of_years integer,
    moon_type character varying(30) NOT NULL,
    has_atmosphere boolean,
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
    name character varying(50),
    distance_from_earth_in_au numeric(10,2),
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_type character varying(30) NOT NULL,
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
    name character varying(50),
    galaxy_id integer,
    star_type character varying(30) NOT NULL,
    constellation_id integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Solar System', 'Both');
INSERT INTO public.constellation VALUES (2, 'Centaurus', 'Southern');
INSERT INTO public.constellation VALUES (3, 'Orion', 'Both');
INSERT INTO public.constellation VALUES (4, 'Canis Major', 'Southern');
INSERT INTO public.constellation VALUES (5, 'Andromeda', 'Northern');
INSERT INTO public.constellation VALUES (6, 'Triangulum', 'Northern');
INSERT INTO public.constellation VALUES (7, 'Virgo', 'Both');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', true, 'Local Group');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', true, 'Local Group');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', true, 'Local Group');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical', false, 'Virgo Cluster');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Spiral', false, 'Virgo Cluster');
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Elliptical', true, 'Centaurus Group');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 'Natural Satellite', false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 'Irregular', false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 'Irregular', false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 4500, 'Volcanic', false, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 'Icy', true, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 'Icy', true, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 'Cratered', false, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 'Atmospheric', true, 4);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 'Icy', false, 4);
INSERT INTO public.moon VALUES (10, 'Veon', 3000, 'Dusty', false, 5);
INSERT INTO public.moon VALUES (11, 'Proxiluna', 4800, 'Rocky', false, 6);
INSERT INTO public.moon VALUES (12, 'Centurion', 4700, 'Volcanic', false, 7);
INSERT INTO public.moon VALUES (13, 'Inferna', 6900, 'Lava Moon', false, 8);
INSERT INTO public.moon VALUES (14, 'Gustar', 6900, 'Gas Clump', false, 9);
INSERT INTO public.moon VALUES (15, 'Siriona', 4500, 'Icy', true, 10);
INSERT INTO public.moon VALUES (16, 'Androlite', 6000, 'Rocky', false, 11);
INSERT INTO public.moon VALUES (17, 'Nivara', 5900, 'Icy', true, 11);
INSERT INTO public.moon VALUES (18, 'Volcora', 5500, 'Volcanic', false, 12);
INSERT INTO public.moon VALUES (19, 'Triangulon', 5000, 'Cratered', false, 13);
INSERT INTO public.moon VALUES (20, 'Zionis', 7000, 'Tectonic', false, 14);
INSERT INTO public.moon VALUES (21, 'Cenari', 5500, 'Dusty', false, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0.00, 4540, 'The only known planet to support life.', true, true, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 1.52, 4500, 'Known as the Red Planet, potential for microbial life.', false, true, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 5.20, 4500, 'The largest planet in the Solar System.', false, true, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 9.58, 4500, 'Famous for its ring system.', false, true, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (5, 'Venus', 0.72, 4500, 'Hottest planet with a thick CO2 atmosphere.', false, true, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (6, 'Proxima b', 4.25, 4800, 'Potentially Earth-like exoplanet in habitable zone.', false, true, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (7, 'Alpha Centauri Bb', 4.37, 5000, 'Close exoplanet with high surface temp.', false, true, 'Rocky', 2);
INSERT INTO public.planet VALUES (8, 'Betelgeuse I', 640.00, 7000, 'A scorched rocky planet orbiting close to Betelgeuse.', false, true, 'Terrestrial', 3);
INSERT INTO public.planet VALUES (9, 'Betelgeuse II', 645.00, 6900, 'Gas giant with violent storms.', false, true, 'Gas Giant', 3);
INSERT INTO public.planet VALUES (10, 'Sirius Ab', 8.60, 4500, 'Orbiting the brightest star in the night sky.', false, true, 'Ice Giant', 4);
INSERT INTO public.planet VALUES (11, 'Andromeda Prime', 2500000.00, 6000, 'Fictional habitable planet in the Andromeda galaxy.', false, true, 'Terrestrial', 5);
INSERT INTO public.planet VALUES (12, 'Andros X', 2500000.00, 5500, 'Volcanic world with extreme activity.', false, true, 'Rocky', 6);
INSERT INTO public.planet VALUES (13, 'Triangulum A', 3000000.00, 5000, 'An ice-covered exoplanet.', false, true, 'Ice Giant', 7);
INSERT INTO public.planet VALUES (14, 'M87-Zion', 53000000.00, 7000, 'Orbiting a black hole-heavy galaxy.', false, true, 'Super-Earth', 8);
INSERT INTO public.planet VALUES (15, 'CenA-9', 13000000.00, 5500, 'Extreme radiation environment.', false, true, 'Rocky', 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type main-sequence', 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, 'G-type main-sequence', 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 'Red supergiant', 3);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 'A-type main-sequence', 4);
INSERT INTO public.star VALUES (5, 'Andromeda Galaxy Star 1', 2, 'O-type main-sequence', 5);
INSERT INTO public.star VALUES (6, 'Alpha Andromedae', 2, 'K-type giant', 5);
INSERT INTO public.star VALUES (7, 'Triangulum Galaxy Star 1', 3, 'B-type main-sequence', 6);
INSERT INTO public.star VALUES (8, 'Messier 87 Star 1', 4, 'Supergiant', 7);
INSERT INTO public.star VALUES (9, 'Sombrero Galaxy Star 1', 5, 'M-type red giant', 7);
INSERT INTO public.star VALUES (10, 'Centaurus A Star 1', 6, 'Elliptical galaxy star', 2);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation uc_constellation; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT uc_constellation UNIQUE (name);


--
-- Name: galaxy uc_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uc_galaxy UNIQUE (name);


--
-- Name: moon uc_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uc_moon UNIQUE (name);


--
-- Name: planet uc_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uc_planet UNIQUE (name);


--
-- Name: star uc_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uc_star UNIQUE (name);


--
-- Name: star fk_constellation; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_constellation FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

