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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    score integer NOT NULL,
    user_id integer NOT NULL
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
-- Name: guess_user; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guess_user (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer NOT NULL,
    best_game integer NOT NULL
);


ALTER TABLE public.guess_user OWNER TO freecodecamp;

--
-- Name: guess_user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guess_user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guess_user_user_id_seq OWNER TO freecodecamp;

--
-- Name: guess_user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guess_user_user_id_seq OWNED BY public.guess_user.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: guess_user user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guess_user ALTER COLUMN user_id SET DEFAULT nextval('public.guess_user_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 13, 45);
INSERT INTO public.games VALUES (2, 9, 45);
INSERT INTO public.games VALUES (3, 715, 46);
INSERT INTO public.games VALUES (4, 345, 46);
INSERT INTO public.games VALUES (5, 52, 47);
INSERT INTO public.games VALUES (6, 896, 47);
INSERT INTO public.games VALUES (7, 486, 46);
INSERT INTO public.games VALUES (8, 480, 46);
INSERT INTO public.games VALUES (9, 919, 46);
INSERT INTO public.games VALUES (10, 18, 45);
INSERT INTO public.games VALUES (11, 737, 48);
INSERT INTO public.games VALUES (12, 503, 48);
INSERT INTO public.games VALUES (13, 775, 49);
INSERT INTO public.games VALUES (14, 266, 49);
INSERT INTO public.games VALUES (15, 772, 48);
INSERT INTO public.games VALUES (16, 399, 48);
INSERT INTO public.games VALUES (17, 471, 48);
INSERT INTO public.games VALUES (18, 4, 45);
INSERT INTO public.games VALUES (19, 1, 45);
INSERT INTO public.games VALUES (20, 5, 51);
INSERT INTO public.games VALUES (21, 4, 51);
INSERT INTO public.games VALUES (22, 302, 52);
INSERT INTO public.games VALUES (23, 708, 52);
INSERT INTO public.games VALUES (24, 978, 53);
INSERT INTO public.games VALUES (25, 412, 53);
INSERT INTO public.games VALUES (26, 393, 52);
INSERT INTO public.games VALUES (27, 434, 52);
INSERT INTO public.games VALUES (28, 331, 52);
INSERT INTO public.games VALUES (29, 501, 54);
INSERT INTO public.games VALUES (30, 722, 54);
INSERT INTO public.games VALUES (31, 476, 55);
INSERT INTO public.games VALUES (32, 95, 55);
INSERT INTO public.games VALUES (33, 563, 54);
INSERT INTO public.games VALUES (34, 704, 54);
INSERT INTO public.games VALUES (35, 515, 54);
INSERT INTO public.games VALUES (36, 248, 56);
INSERT INTO public.games VALUES (37, 158, 56);
INSERT INTO public.games VALUES (38, 21, 57);
INSERT INTO public.games VALUES (39, 372, 57);
INSERT INTO public.games VALUES (40, 102, 56);
INSERT INTO public.games VALUES (41, 707, 56);
INSERT INTO public.games VALUES (42, 649, 56);
INSERT INTO public.games VALUES (43, 364, 58);
INSERT INTO public.games VALUES (44, 503, 58);
INSERT INTO public.games VALUES (45, 352, 59);
INSERT INTO public.games VALUES (46, 174, 59);
INSERT INTO public.games VALUES (47, 962, 58);
INSERT INTO public.games VALUES (48, 486, 58);
INSERT INTO public.games VALUES (49, 547, 58);
INSERT INTO public.games VALUES (50, 570, 60);
INSERT INTO public.games VALUES (51, 959, 60);
INSERT INTO public.games VALUES (52, 224, 61);
INSERT INTO public.games VALUES (53, 582, 61);
INSERT INTO public.games VALUES (54, 318, 60);
INSERT INTO public.games VALUES (55, 486, 60);
INSERT INTO public.games VALUES (56, 970, 60);
INSERT INTO public.games VALUES (57, 287, 62);
INSERT INTO public.games VALUES (58, 160, 62);
INSERT INTO public.games VALUES (59, 487, 63);
INSERT INTO public.games VALUES (60, 659, 63);
INSERT INTO public.games VALUES (61, 651, 62);
INSERT INTO public.games VALUES (62, 956, 62);
INSERT INTO public.games VALUES (63, 282, 62);
INSERT INTO public.games VALUES (64, 205, 64);
INSERT INTO public.games VALUES (65, 960, 64);
INSERT INTO public.games VALUES (66, 188, 65);
INSERT INTO public.games VALUES (67, 6, 65);
INSERT INTO public.games VALUES (68, 838, 64);
INSERT INTO public.games VALUES (69, 471, 64);
INSERT INTO public.games VALUES (70, 789, 64);
INSERT INTO public.games VALUES (71, 91, 66);
INSERT INTO public.games VALUES (72, 588, 66);
INSERT INTO public.games VALUES (73, 914, 67);
INSERT INTO public.games VALUES (74, 519, 67);
INSERT INTO public.games VALUES (75, 973, 66);
INSERT INTO public.games VALUES (76, 111, 66);
INSERT INTO public.games VALUES (77, 33, 66);
INSERT INTO public.games VALUES (78, 10, 68);
INSERT INTO public.games VALUES (79, 281, 68);
INSERT INTO public.games VALUES (80, 845, 69);
INSERT INTO public.games VALUES (81, 8, 69);
INSERT INTO public.games VALUES (82, 96, 68);
INSERT INTO public.games VALUES (83, 829, 68);
INSERT INTO public.games VALUES (84, 151, 68);
INSERT INTO public.games VALUES (85, 582, 70);
INSERT INTO public.games VALUES (86, 312, 70);
INSERT INTO public.games VALUES (87, 929, 71);
INSERT INTO public.games VALUES (88, 107, 71);
INSERT INTO public.games VALUES (89, 207, 70);
INSERT INTO public.games VALUES (90, 609, 70);
INSERT INTO public.games VALUES (91, 282, 70);
INSERT INTO public.games VALUES (92, 7, 51);
INSERT INTO public.games VALUES (93, 15, 51);
INSERT INTO public.games VALUES (94, 7, 72);
INSERT INTO public.games VALUES (95, 196, 75);
INSERT INTO public.games VALUES (96, 625, 75);
INSERT INTO public.games VALUES (97, 228, 76);
INSERT INTO public.games VALUES (98, 848, 76);
INSERT INTO public.games VALUES (99, 513, 75);
INSERT INTO public.games VALUES (100, 50, 75);
INSERT INTO public.games VALUES (101, 809, 75);
INSERT INTO public.games VALUES (102, 215, 77);
INSERT INTO public.games VALUES (103, 160, 77);
INSERT INTO public.games VALUES (104, 302, 78);
INSERT INTO public.games VALUES (105, 350, 78);
INSERT INTO public.games VALUES (106, 777, 77);
INSERT INTO public.games VALUES (107, 223, 77);
INSERT INTO public.games VALUES (108, 599, 77);
INSERT INTO public.games VALUES (109, 9, 51);
INSERT INTO public.games VALUES (110, 94, 79);
INSERT INTO public.games VALUES (111, 333, 79);
INSERT INTO public.games VALUES (112, 628, 80);
INSERT INTO public.games VALUES (113, 411, 80);
INSERT INTO public.games VALUES (114, 847, 79);
INSERT INTO public.games VALUES (115, 837, 79);
INSERT INTO public.games VALUES (116, 404, 79);
INSERT INTO public.games VALUES (117, 833, 81);
INSERT INTO public.games VALUES (118, 977, 81);
INSERT INTO public.games VALUES (119, 734, 82);
INSERT INTO public.games VALUES (120, 473, 82);
INSERT INTO public.games VALUES (121, 582, 81);
INSERT INTO public.games VALUES (122, 774, 81);
INSERT INTO public.games VALUES (123, 397, 81);
INSERT INTO public.games VALUES (124, 885, 83);
INSERT INTO public.games VALUES (125, 28, 83);
INSERT INTO public.games VALUES (126, 543, 84);
INSERT INTO public.games VALUES (127, 158, 84);
INSERT INTO public.games VALUES (128, 31, 83);
INSERT INTO public.games VALUES (129, 641, 83);
INSERT INTO public.games VALUES (130, 565, 83);
INSERT INTO public.games VALUES (131, 259, 85);
INSERT INTO public.games VALUES (132, 502, 85);
INSERT INTO public.games VALUES (133, 921, 86);
INSERT INTO public.games VALUES (134, 51, 86);
INSERT INTO public.games VALUES (135, 827, 85);
INSERT INTO public.games VALUES (136, 652, 85);
INSERT INTO public.games VALUES (137, 745, 85);
INSERT INTO public.games VALUES (138, 365, 87);
INSERT INTO public.games VALUES (139, 227, 87);
INSERT INTO public.games VALUES (140, 498, 88);
INSERT INTO public.games VALUES (141, 39, 88);
INSERT INTO public.games VALUES (142, 622, 87);
INSERT INTO public.games VALUES (143, 943, 87);
INSERT INTO public.games VALUES (144, 65, 87);
INSERT INTO public.games VALUES (145, 726, 89);
INSERT INTO public.games VALUES (146, 198, 89);
INSERT INTO public.games VALUES (147, 42, 90);
INSERT INTO public.games VALUES (148, 946, 90);
INSERT INTO public.games VALUES (149, 860, 89);
INSERT INTO public.games VALUES (150, 151, 89);
INSERT INTO public.games VALUES (151, 363, 89);
INSERT INTO public.games VALUES (152, 498, 91);
INSERT INTO public.games VALUES (153, 668, 91);
INSERT INTO public.games VALUES (154, 944, 92);
INSERT INTO public.games VALUES (155, 941, 92);
INSERT INTO public.games VALUES (156, 195, 91);
INSERT INTO public.games VALUES (157, 606, 91);
INSERT INTO public.games VALUES (158, 341, 91);
INSERT INTO public.games VALUES (159, 233, 93);
INSERT INTO public.games VALUES (160, 634, 93);
INSERT INTO public.games VALUES (161, 402, 94);
INSERT INTO public.games VALUES (162, 653, 94);
INSERT INTO public.games VALUES (163, 793, 93);
INSERT INTO public.games VALUES (164, 283, 93);
INSERT INTO public.games VALUES (165, 988, 93);
INSERT INTO public.games VALUES (166, 795, 95);
INSERT INTO public.games VALUES (167, 111, 95);
INSERT INTO public.games VALUES (168, 397, 96);
INSERT INTO public.games VALUES (169, 799, 96);
INSERT INTO public.games VALUES (170, 66, 95);
INSERT INTO public.games VALUES (171, 820, 95);
INSERT INTO public.games VALUES (172, 141, 95);
INSERT INTO public.games VALUES (173, 812, 97);
INSERT INTO public.games VALUES (174, 627, 97);
INSERT INTO public.games VALUES (175, 644, 98);
INSERT INTO public.games VALUES (176, 273, 98);
INSERT INTO public.games VALUES (177, 85, 97);
INSERT INTO public.games VALUES (178, 191, 97);
INSERT INTO public.games VALUES (179, 30, 97);
INSERT INTO public.games VALUES (180, 255, 99);
INSERT INTO public.games VALUES (181, 399, 99);
INSERT INTO public.games VALUES (182, 583, 100);
INSERT INTO public.games VALUES (183, 138, 100);
INSERT INTO public.games VALUES (184, 287, 99);
INSERT INTO public.games VALUES (185, 917, 99);
INSERT INTO public.games VALUES (186, 160, 99);
INSERT INTO public.games VALUES (187, 10, 101);
INSERT INTO public.games VALUES (188, 322, 102);
INSERT INTO public.games VALUES (189, 423, 102);
INSERT INTO public.games VALUES (190, 364, 103);
INSERT INTO public.games VALUES (191, 387, 103);
INSERT INTO public.games VALUES (192, 2, 102);
INSERT INTO public.games VALUES (193, 661, 102);
INSERT INTO public.games VALUES (194, 522, 102);
INSERT INTO public.games VALUES (195, 538, 104);
INSERT INTO public.games VALUES (196, 215, 105);
INSERT INTO public.games VALUES (197, 229, 106);
INSERT INTO public.games VALUES (198, 999, 106);
INSERT INTO public.games VALUES (199, 642, 107);
INSERT INTO public.games VALUES (200, 45, 107);
INSERT INTO public.games VALUES (201, 69, 106);
INSERT INTO public.games VALUES (202, 455, 106);
INSERT INTO public.games VALUES (203, 452, 106);
INSERT INTO public.games VALUES (204, 244, 108);
INSERT INTO public.games VALUES (205, 671, 108);
INSERT INTO public.games VALUES (206, 291, 109);
INSERT INTO public.games VALUES (207, 352, 109);
INSERT INTO public.games VALUES (208, 687, 108);
INSERT INTO public.games VALUES (209, 58, 108);
INSERT INTO public.games VALUES (210, 486, 108);
INSERT INTO public.games VALUES (211, 564, 110);
INSERT INTO public.games VALUES (212, 256, 110);
INSERT INTO public.games VALUES (213, 364, 111);
INSERT INTO public.games VALUES (214, 235, 111);
INSERT INTO public.games VALUES (215, 716, 110);
INSERT INTO public.games VALUES (216, 481, 110);
INSERT INTO public.games VALUES (217, 112, 110);
INSERT INTO public.games VALUES (218, 621, 113);
INSERT INTO public.games VALUES (219, 170, 113);
INSERT INTO public.games VALUES (220, 200, 114);
INSERT INTO public.games VALUES (221, 401, 114);
INSERT INTO public.games VALUES (222, 906, 113);
INSERT INTO public.games VALUES (223, 346, 113);
INSERT INTO public.games VALUES (224, 40, 113);
INSERT INTO public.games VALUES (225, 185, 115);
INSERT INTO public.games VALUES (226, 305, 115);
INSERT INTO public.games VALUES (227, 544, 116);
INSERT INTO public.games VALUES (228, 275, 116);
INSERT INTO public.games VALUES (229, 630, 115);
INSERT INTO public.games VALUES (230, 431, 115);
INSERT INTO public.games VALUES (231, 616, 115);


--
-- Data for Name: guess_user; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guess_user VALUES (105, 'user_1721238440247', 1, 215);
INSERT INTO public.guess_user VALUES (55, 'user_1721235513390', 2, 95);
INSERT INTO public.guess_user VALUES (47, 'user_1721233794058', 2, 896);
INSERT INTO public.guess_user VALUES (72, 'Rau', 1, 7);
INSERT INTO public.guess_user VALUES (63, 'user_1721235732468', 2, 659);
INSERT INTO public.guess_user VALUES (73, 'Roe', 0, 0);
INSERT INTO public.guess_user VALUES (74, 'gOA', 0, 0);
INSERT INTO public.guess_user VALUES (54, 'user_1721235513391', 5, 515);
INSERT INTO public.guess_user VALUES (46, 'user_1721233794059', 5, 919);
INSERT INTO public.guess_user VALUES (62, 'user_1721235732469', 5, 282);
INSERT INTO public.guess_user VALUES (49, 'user_1721234004333', 2, 266);
INSERT INTO public.guess_user VALUES (57, 'user_1721235522627', 2, 372);
INSERT INTO public.guess_user VALUES (86, 'user_1721237963788', 2, 51);
INSERT INTO public.guess_user VALUES (48, 'user_1721234004334', 5, 471);
INSERT INTO public.guess_user VALUES (50, 'aNGELO', 0, 0);
INSERT INTO public.guess_user VALUES (56, 'user_1721235522628', 5, 649);
INSERT INTO public.guess_user VALUES (45, 'Angelo', 5, 1);
INSERT INTO public.guess_user VALUES (76, 'user_1721237089447', 2, 848);
INSERT INTO public.guess_user VALUES (65, 'user_1721235784487', 2, 6);
INSERT INTO public.guess_user VALUES (96, 'user_1721238084949', 2, 397);
INSERT INTO public.guess_user VALUES (85, 'user_1721237963789', 5, 259);
INSERT INTO public.guess_user VALUES (59, 'user_1721235535370', 2, 174);
INSERT INTO public.guess_user VALUES (64, 'user_1721235784488', 5, 789);
INSERT INTO public.guess_user VALUES (53, 'user_1721235276563', 2, 412);
INSERT INTO public.guess_user VALUES (75, 'user_1721237089448', 5, 809);
INSERT INTO public.guess_user VALUES (107, 'user_1721238588117', 2, 45);
INSERT INTO public.guess_user VALUES (58, 'user_1721235535371', 5, 547);
INSERT INTO public.guess_user VALUES (52, 'user_1721235276564', 5, 331);
INSERT INTO public.guess_user VALUES (95, 'user_1721238084950', 5, 66);
INSERT INTO public.guess_user VALUES (67, 'user_1721235803515', 2, 519);
INSERT INTO public.guess_user VALUES (61, 'user_1721235583939', 2, 582);
INSERT INTO public.guess_user VALUES (78, 'user_1721237401635', 2, 350);
INSERT INTO public.guess_user VALUES (88, 'user_1721237978544', 2, 39);
INSERT INTO public.guess_user VALUES (66, 'user_1721235803516', 5, 33);
INSERT INTO public.guess_user VALUES (60, 'user_1721235583940', 5, 970);
INSERT INTO public.guess_user VALUES (106, 'user_1721238588118', 5, 69);
INSERT INTO public.guess_user VALUES (77, 'user_1721237401636', 5, 599);
INSERT INTO public.guess_user VALUES (51, 'Sigrid', 5, 9);
INSERT INTO public.guess_user VALUES (69, 'user_1721236066897', 2, 8);
INSERT INTO public.guess_user VALUES (87, 'user_1721237978545', 5, 65);
INSERT INTO public.guess_user VALUES (98, 'user_1721238118739', 2, 273);
INSERT INTO public.guess_user VALUES (68, 'user_1721236066898', 5, 151);
INSERT INTO public.guess_user VALUES (80, 'user_1721237817096', 2, 411);
INSERT INTO public.guess_user VALUES (109, 'user_1721238751734', 2, 0);
INSERT INTO public.guess_user VALUES (71, 'user_1721236079930', 2, 107);
INSERT INTO public.guess_user VALUES (90, 'user_1721237987148', 2, 42);
INSERT INTO public.guess_user VALUES (97, 'user_1721238118740', 5, 30);
INSERT INTO public.guess_user VALUES (79, 'user_1721237817098', 5, 94);
INSERT INTO public.guess_user VALUES (70, 'user_1721236079931', 5, 282);
INSERT INTO public.guess_user VALUES (108, 'user_1721238751735', 5, 0);
INSERT INTO public.guess_user VALUES (89, 'user_1721237987149', 5, 151);
INSERT INTO public.guess_user VALUES (82, 'user_1721237920379', 2, 473);
INSERT INTO public.guess_user VALUES (81, 'user_1721237920380', 5, 397);
INSERT INTO public.guess_user VALUES (100, 'user_1721238152974', 2, 138);
INSERT INTO public.guess_user VALUES (111, 'user_1721238949071', 2, 0);
INSERT INTO public.guess_user VALUES (92, 'user_1721238029787', 2, 941);
INSERT INTO public.guess_user VALUES (110, 'user_1721238949072', 5, 0);
INSERT INTO public.guess_user VALUES (112, 'James', 0, 0);
INSERT INTO public.guess_user VALUES (84, 'user_1721237932904', 2, 158);
INSERT INTO public.guess_user VALUES (99, 'user_1721238152975', 5, 160);
INSERT INTO public.guess_user VALUES (91, 'user_1721238029788', 5, 195);
INSERT INTO public.guess_user VALUES (83, 'user_1721237932905', 5, 28);
INSERT INTO public.guess_user VALUES (101, 'Joe', 1, 10);
INSERT INTO public.guess_user VALUES (94, 'user_1721238073181', 2, 402);
INSERT INTO public.guess_user VALUES (114, 'user_1721239046990', 2, 0);
INSERT INTO public.guess_user VALUES (93, 'user_1721238073182', 5, 233);
INSERT INTO public.guess_user VALUES (103, 'user_1721238406933', 2, 364);
INSERT INTO public.guess_user VALUES (113, 'user_1721239046991', 5, 0);
INSERT INTO public.guess_user VALUES (102, 'user_1721238406934', 5, 2);
INSERT INTO public.guess_user VALUES (104, 'user_1721238440248', 1, 538);
INSERT INTO public.guess_user VALUES (116, 'user_1721239216600', 2, 0);
INSERT INTO public.guess_user VALUES (115, 'user_1721239216601', 5, 0);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 231, true);


--
-- Name: guess_user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guess_user_user_id_seq', 116, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: guess_user guess_user_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guess_user
    ADD CONSTRAINT guess_user_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.guess_user(user_id);


--
-- PostgreSQL database dump complete
--

