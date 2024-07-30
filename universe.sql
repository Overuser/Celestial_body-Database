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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    location character varying(40) NOT NULL,
    spin_parameter numeric(5,2) NOT NULL,
    schwarzschild_radius integer NOT NULL,
    mass integer NOT NULL,
    description text NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    galaxy_type character varying(30) NOT NULL,
    is_spherical boolean NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    diameter integer
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    planet_type character varying(30) NOT NULL,
    has_life boolean NOT NULL
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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    star_type character varying(30) NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (16, 'Milky Way Center', 0.99, 12700, 4300, 'The supermassive black hole at the center of the Milky Way galaxy', 'Sagittarius A*');
INSERT INTO public.black_hole VALUES (17, 'Messier 87', 0.65, 19500, 6500000, 'The supermassive black hole at the center of the galaxy Messier 87', 'M87*');
INSERT INTO public.black_hole VALUES (18, 'Cygnus Constellation', 0.90, 44, 15, 'A stellar-mass black hole in the constellation Cygnus', 'Cygnus X-1');
INSERT INTO public.black_hole VALUES (19, 'Scorpius Constellation', 0.72, 21, 7, 'A stellar-mass black hole in the constellation Scorpius', 'GRO J1655-40');
INSERT INTO public.black_hole VALUES (20, 'Cygnus Constellation', 0.80, 26, 9, 'A stellar-mass black hole in the constellation Cygnus', 'V404 Cygni');
INSERT INTO public.black_hole VALUES (21, 'Large Magellanic Cloud', 0.92, 58, 11, 'A stellar-mass black hole in the Large Magellanic Cloud', 'LMC X-1');
INSERT INTO public.black_hole VALUES (22, 'Centaurus Galaxy', 0.84, 10600, 55000, 'The supermassive black hole at the center of the galaxy Centaurus A', 'Centaurus A');
INSERT INTO public.black_hole VALUES (23, 'NGC 1277 Galaxy', 0.50, 45000, 17000000, 'An ultramassive black hole in the galaxy NGC 1277', 'NGC 1277');
INSERT INTO public.black_hole VALUES (24, 'NGC 1600 Galaxy', 0.70, 30000, 17000000, 'An ultramassive black hole in the galaxy NGC 1600', 'NGC 1600');
INSERT INTO public.black_hole VALUES (25, 'Coma Cluster', 0.40, 130000, 21000000, 'An ultramassive black hole in the Coma Cluster galaxy NGC 4889', 'NGC 4889');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.', 'SA(s)b', true);
INSERT INTO public.galaxy VALUES (7, 'Bodes Galaxy', 'Also known as Messier 81. The largest galaxy in the M81 Group. It harbors a supermassive black hole 70 million times the mass of the Sun.', 'SA(s)ab', false);
INSERT INTO public.galaxy VALUES (9, 'Cartwheel Galaxy', 'The largest in the Cartwheel Galaxy group, made up of four spiral galaxies', 'S pec', true);
INSERT INTO public.galaxy VALUES (10, 'Condor Galaxy', 'The largest known spiral galaxy, it has a diameter of over 665,300 light-years (204.0 kiloparsecs). It is tidally disturbed by the smaller lenticular galaxy', 'SB(s)b pec', false);
INSERT INTO public.galaxy VALUES (11, 'Cosmos Redshift 7', 'Galaxy Cosmos Redshift 7 is reported to be the brightest of distant galaxies (z > 6) and to contain some of the earliest first stars (first generation; Population III) that produced the chemical elements needed for the later formation of planets and life as we know it.', 'Lyman-alpha emitter', false);
INSERT INTO public.galaxy VALUES (12, 'Hoags Object', 'It is of the subtype Hoag-type galaxy, and may in fact be a polar-ring galaxy with the ring in the plane of rotation of the central', '(RP)E0', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', 'Earths Moon', 3474);
INSERT INTO public.moon VALUES (2, 2, 'Phobos', 'A moon of Mars', 22);
INSERT INTO public.moon VALUES (3, 3, 'Deimos', 'A moon of Mars', 12);
INSERT INTO public.moon VALUES (4, 4, 'Io', 'A moon of Jupiter', 3643);
INSERT INTO public.moon VALUES (5, 5, 'Europa', 'A moon of Jupiter', 3122);
INSERT INTO public.moon VALUES (6, 6, 'Ganymede', 'A moon of Jupiter', 5268);
INSERT INTO public.moon VALUES (7, 7, 'Callisto', 'A moon of Jupiter', 4821);
INSERT INTO public.moon VALUES (8, 8, 'Titan', 'A moon of Saturn', 5149);
INSERT INTO public.moon VALUES (9, 9, 'Rhea', 'A moon of Saturn', 1528);
INSERT INTO public.moon VALUES (10, 10, 'Iapetus', 'A moon of Saturn', 1469);
INSERT INTO public.moon VALUES (11, 11, 'Titania', 'A moon of Uranus', 1578);
INSERT INTO public.moon VALUES (12, 12, 'Oberon', 'A moon of Uranus', 1523);
INSERT INTO public.moon VALUES (13, 13, 'Miranda', 'A moon of Uranus', 471);
INSERT INTO public.moon VALUES (14, 14, 'Ariel', 'A moon of Uranus', 1158);
INSERT INTO public.moon VALUES (15, 15, 'Umbriel', 'A moon of Uranus', 1169);
INSERT INTO public.moon VALUES (16, 16, 'Triton', 'A moon of Neptune', 2706);
INSERT INTO public.moon VALUES (17, 17, 'Nereid', 'A moon of Neptune', 340);
INSERT INTO public.moon VALUES (18, 18, 'Charon', 'A moon of Pluto', 1212);
INSERT INTO public.moon VALUES (19, 19, 'Nix', 'A moon of Pluto', 50);
INSERT INTO public.moon VALUES (20, 20, 'Hydra', 'A moon of Pluto', 52);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 11, 'Proxima b', 'A planet orbiting Proxima Centauri', 'Rocky', true);
INSERT INTO public.planet VALUES (2, 12, 'Betelgeuse I', 'A planet orbiting Betelgeuse', 'Gas Giant', false);
INSERT INTO public.planet VALUES (3, 13, 'Sirius A I', 'A planet orbiting Sirius A', 'Rocky', false);
INSERT INTO public.planet VALUES (4, 14, 'Alpha Centauri Bb', 'A planet orbiting Alpha Centauri B', 'Rocky', false);
INSERT INTO public.planet VALUES (5, 15, 'Alpha Centauri Cc', 'A planet orbiting Alpha Centauri C', 'Gas Giant', false);
INSERT INTO public.planet VALUES (6, 16, 'Vega I', 'A planet orbiting Vega', 'Gas Giant', false);
INSERT INTO public.planet VALUES (7, 17, 'Polaris b', 'A planet orbiting Polaris', 'Ice Giant', false);
INSERT INTO public.planet VALUES (8, 18, 'Antares I', 'A planet orbiting Antares', 'Rocky', false);
INSERT INTO public.planet VALUES (9, 19, 'Rigel I', 'A planet orbiting Rigel', 'Gas Giant', false);
INSERT INTO public.planet VALUES (10, 20, 'Arcturus I', 'A planet orbiting Arcturus', 'Rocky', false);
INSERT INTO public.planet VALUES (11, 11, 'Proxima c', 'A second planet orbiting Proxima Centauri', 'Rocky', false);
INSERT INTO public.planet VALUES (12, 12, 'Betelgeuse II', 'A second planet orbiting Betelgeuse', 'Ice Giant', false);
INSERT INTO public.planet VALUES (13, 13, 'Sirius B I', 'A planet orbiting Sirius B', 'Rocky', false);
INSERT INTO public.planet VALUES (14, 14, 'Alpha Centauri Ad', 'A second planet orbiting Alpha Centauri A', 'Gas Giant', false);
INSERT INTO public.planet VALUES (15, 15, 'Alpha Centauri Dd', 'A second planet orbiting Alpha Centauri D', 'Ice Giant', false);
INSERT INTO public.planet VALUES (16, 16, 'Vega II', 'A second planet orbiting Vega', 'Rocky', false);
INSERT INTO public.planet VALUES (17, 17, 'Polaris c', 'A second planet orbiting Polaris', 'Gas Giant', false);
INSERT INTO public.planet VALUES (18, 18, 'Antares II', 'A second planet orbiting Antares', 'Rocky', false);
INSERT INTO public.planet VALUES (19, 19, 'Rigel II', 'A second planet orbiting Rigel', 'Ice Giant', false);
INSERT INTO public.planet VALUES (20, 20, 'Arcturus II', 'A second planet orbiting Arcturus', 'Gas Giant', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (11, 1, 'Proxima Centauri', 'The closest known star to the Sun', 'Red Dwarf');
INSERT INTO public.star VALUES (12, 7, 'Betelgeuse', 'A red supergiant star in the constellation Orion', 'Red Supergiant');
INSERT INTO public.star VALUES (13, 9, 'Sirius', 'The brightest star in the night sky', 'Main Sequence');
INSERT INTO public.star VALUES (14, 10, 'Alpha Centauri A', 'The closest star system to the Solar System', 'Main Sequence');
INSERT INTO public.star VALUES (15, 11, 'Alpha Centauri B', 'Part of the closest star system to the Solar System', 'Main Sequence');
INSERT INTO public.star VALUES (16, 12, 'Vega', 'The fifth brightest star in the night sky', 'Main Sequence');
INSERT INTO public.star VALUES (17, 1, 'Polaris', 'The North Star', 'Yellow Supergiant');
INSERT INTO public.star VALUES (18, 7, 'Antares', 'A red supergiant star in the constellation Scorpius', 'Red Supergiant');
INSERT INTO public.star VALUES (19, 9, 'Rigel', 'A blue supergiant star in the constellation Orion', 'Blue Supergiant');
INSERT INTO public.star VALUES (20, 10, 'Arcturus', 'The brightest star in the constellation Boötes', 'Red Giant');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 25, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


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
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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

