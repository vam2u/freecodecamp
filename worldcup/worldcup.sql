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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: tmpgames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tmpgames (
    year integer NOT NULL,
    round character varying NOT NULL,
    winner character varying NOT NULL,
    opponent character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.tmpgames OWNER TO freecodecamp;

--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 35, 32, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 27, 34, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 32, 34, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 35, 27, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 32, 43, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 34, 45, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 27, 28, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 35, 48, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 34, 30, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 45, 46, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 27, 38, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 28, 39, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 32, 33, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 43, 44, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 48, 42, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 35, 26, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 36, 26, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 40, 28, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 26, 40, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 36, 28, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 40, 31, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 26, 27, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 28, 30, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 36, 35, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 28, 29, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 30, 48, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 35, 41, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 36, 25, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 40, 39, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 31, 37, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 26, 46, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 27, 47, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (25, 'Algeria');
INSERT INTO public.teams VALUES (26, 'Argentina');
INSERT INTO public.teams VALUES (27, 'Belgium');
INSERT INTO public.teams VALUES (28, 'Brazil');
INSERT INTO public.teams VALUES (29, 'Chile');
INSERT INTO public.teams VALUES (30, 'Colombia');
INSERT INTO public.teams VALUES (31, 'Costa Rica');
INSERT INTO public.teams VALUES (32, 'Croatia');
INSERT INTO public.teams VALUES (33, 'Denmark');
INSERT INTO public.teams VALUES (34, 'England');
INSERT INTO public.teams VALUES (35, 'France');
INSERT INTO public.teams VALUES (36, 'Germany');
INSERT INTO public.teams VALUES (37, 'Greece');
INSERT INTO public.teams VALUES (38, 'Japan');
INSERT INTO public.teams VALUES (39, 'Mexico');
INSERT INTO public.teams VALUES (40, 'Netherlands');
INSERT INTO public.teams VALUES (41, 'Nigeria');
INSERT INTO public.teams VALUES (42, 'Portugal');
INSERT INTO public.teams VALUES (43, 'Russia');
INSERT INTO public.teams VALUES (44, 'Spain');
INSERT INTO public.teams VALUES (45, 'Sweden');
INSERT INTO public.teams VALUES (46, 'Switzerland');
INSERT INTO public.teams VALUES (47, 'United States');
INSERT INTO public.teams VALUES (48, 'Uruguay');


--
-- Data for Name: tmpgames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tmpgames VALUES (2018, 'Final', 'France', 'Croatia', 4, 2);
INSERT INTO public.tmpgames VALUES (2018, 'Third Place', 'Belgium', 'England', 2, 0);
INSERT INTO public.tmpgames VALUES (2018, 'Semi-Final', 'Croatia', 'England', 2, 1);
INSERT INTO public.tmpgames VALUES (2018, 'Semi-Final', 'France', 'Belgium', 1, 0);
INSERT INTO public.tmpgames VALUES (2018, 'Quarter-Final', 'Croatia', 'Russia', 3, 2);
INSERT INTO public.tmpgames VALUES (2018, 'Quarter-Final', 'England', 'Sweden', 2, 0);
INSERT INTO public.tmpgames VALUES (2018, 'Quarter-Final', 'Belgium', 'Brazil', 2, 1);
INSERT INTO public.tmpgames VALUES (2018, 'Quarter-Final', 'France', 'Uruguay', 2, 0);
INSERT INTO public.tmpgames VALUES (2018, 'Eighth-Final', 'England', 'Colombia', 2, 1);
INSERT INTO public.tmpgames VALUES (2018, 'Eighth-Final', 'Sweden', 'Switzerland', 1, 0);
INSERT INTO public.tmpgames VALUES (2018, 'Eighth-Final', 'Belgium', 'Japan', 3, 2);
INSERT INTO public.tmpgames VALUES (2018, 'Eighth-Final', 'Brazil', 'Mexico', 2, 0);
INSERT INTO public.tmpgames VALUES (2018, 'Eighth-Final', 'Croatia', 'Denmark', 2, 1);
INSERT INTO public.tmpgames VALUES (2018, 'Eighth-Final', 'Russia', 'Spain', 2, 1);
INSERT INTO public.tmpgames VALUES (2018, 'Eighth-Final', 'Uruguay', 'Portugal', 2, 1);
INSERT INTO public.tmpgames VALUES (2018, 'Eighth-Final', 'France', 'Argentina', 4, 3);
INSERT INTO public.tmpgames VALUES (2014, 'Final', 'Germany', 'Argentina', 1, 0);
INSERT INTO public.tmpgames VALUES (2014, 'Third Place', 'Netherlands', 'Brazil', 3, 0);
INSERT INTO public.tmpgames VALUES (2014, 'Semi-Final', 'Argentina', 'Netherlands', 1, 0);
INSERT INTO public.tmpgames VALUES (2014, 'Semi-Final', 'Germany', 'Brazil', 7, 1);
INSERT INTO public.tmpgames VALUES (2014, 'Quarter-Final', 'Netherlands', 'Costa Rica', 1, 0);
INSERT INTO public.tmpgames VALUES (2014, 'Quarter-Final', 'Argentina', 'Belgium', 1, 0);
INSERT INTO public.tmpgames VALUES (2014, 'Quarter-Final', 'Brazil', 'Colombia', 2, 1);
INSERT INTO public.tmpgames VALUES (2014, 'Quarter-Final', 'Germany', 'France', 1, 0);
INSERT INTO public.tmpgames VALUES (2014, 'Eighth-Final', 'Brazil', 'Chile', 2, 1);
INSERT INTO public.tmpgames VALUES (2014, 'Eighth-Final', 'Colombia', 'Uruguay', 2, 0);
INSERT INTO public.tmpgames VALUES (2014, 'Eighth-Final', 'France', 'Nigeria', 2, 0);
INSERT INTO public.tmpgames VALUES (2014, 'Eighth-Final', 'Germany', 'Algeria', 2, 1);
INSERT INTO public.tmpgames VALUES (2014, 'Eighth-Final', 'Netherlands', 'Mexico', 2, 1);
INSERT INTO public.tmpgames VALUES (2014, 'Eighth-Final', 'Costa Rica', 'Greece', 2, 1);
INSERT INTO public.tmpgames VALUES (2014, 'Eighth-Final', 'Argentina', 'Switzerland', 1, 0);
INSERT INTO public.tmpgames VALUES (2014, 'Eighth-Final', 'Belgium', 'United States', 2, 1);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 48, true);


--
-- Name: games games_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pk PRIMARY KEY (game_id);


--
-- Name: teams teams_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pk PRIMARY KEY (team_id);


--
-- Name: teams teams_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_un UNIQUE (name);


--
-- Name: games games_opponent_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_fk FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_fk FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

