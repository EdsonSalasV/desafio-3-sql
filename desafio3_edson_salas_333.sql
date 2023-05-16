--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7

-- Started on 2023-05-15 21:54:12

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

DROP DATABASE desafio3_edson_salas_333;
--
-- TOC entry 3327 (class 1262 OID 16432)
-- Name: desafio3_edson_salas_333; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE desafio3_edson_salas_333 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';


ALTER DATABASE desafio3_edson_salas_333 OWNER TO postgres;

\connect desafio3_edson_salas_333

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
-- TOC entry 214 (class 1259 OID 16448)
-- Name: comentarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentarios (
    id integer NOT NULL,
    contenido character varying,
    fecha_creacion date,
    usuario_id bigint,
    post_id bigint
);


ALTER TABLE public.comentarios OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16447)
-- Name: comentarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comentarios_id_seq OWNER TO postgres;

--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 213
-- Name: comentarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentarios_id_seq OWNED BY public.comentarios.id;


--
-- TOC entry 212 (class 1259 OID 16441)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    titulo character varying,
    contenido text,
    fecha_creacion date,
    fecha_actualizacion date,
    destacado boolean,
    usuario_id bigint
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16440)
-- Name: post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_id_seq OWNER TO postgres;

--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 211
-- Name: post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_id_seq OWNED BY public.posts.id;


--
-- TOC entry 210 (class 1259 OID 16434)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    email character varying,
    nombre character varying,
    apellido character varying,
    rol character varying
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16433)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 3176 (class 2604 OID 16451)
-- Name: comentarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentarios ALTER COLUMN id SET DEFAULT nextval('public.comentarios_id_seq'::regclass);


--
-- TOC entry 3175 (class 2604 OID 16444)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 16437)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 3321 (class 0 OID 16448)
-- Dependencies: 214
-- Data for Name: comentarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (1, 'comentario generico', '2022-05-04', 1, 1);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (2, 'discurso fome', '2022-08-08', 2, 1);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (3, 'cometario ingenioso', '2022-03-02', 3, 1);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (4, 'comentario predecible', '2022-12-11', 1, 2);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (5, 'comentario funable', '2022-04-09', 2, 2);


--
-- TOC entry 3319 (class 0 OID 16441)
-- Dependencies: 212
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (1, 'kinesiologo', 'hospital el pino', '2022-04-01', '2022-05-05', true, 1);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (2, 'enfermera', 'hospital el carmen', '2022-08-07', '2022-09-06', false, 2);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (3, 'fonoaudiologo', 'cesfam dr ivan insunza', '2022-03-01', '2022-03-02', true, 1);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (4, 'kinesiologa', 'cesfam san jose de chuchunco', '2022-12-11', '2022-12-12', true, 3);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (5, 'medico', 'hospital el carmen', '2022-04-08', '2022-05-15', true, NULL);


--
-- TOC entry 3317 (class 0 OID 16434)
-- Dependencies: 210
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (1, 'maria@email.com', 'maria', 'mac', 'administrador');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (2, 'pedro@email.com', 'pedro', 'pec', 'usuario');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (3, 'juan@email.com', 'juan', 'juc', 'usuario');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (4, 'jose@email.com', 'jose', 'joc', 'usuario');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (5, 'rosa@email.com', 'rosa', 'roc', 'usuario');


--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 213
-- Name: comentarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentarios_id_seq', 5, true);


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 211
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_id_seq', 5, true);


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 5, true);


-- Completed on 2023-05-15 21:54:12

--
-- PostgreSQL database dump complete
--

create table usuarios (id serial, email varchar, nombre varchar, apellido varchar, rol varchar);

select * from usuarios;

INSERT INTO usuarios(email, nombre, apellido, rol) values ('maria@email.com', 'maria', 'mac', 'administrador');
INSERT INTO usuarios(email, nombre, apellido, rol) values ('pedro@email.com', 'pedro', 'pec', 'usuario');
INSERT INTO usuarios(email, nombre, apellido, rol) values ('juan@email.com', 'juan', 'juc', 'usuario');
INSERT INTO usuarios(email, nombre, apellido, rol) values ('jose@email.com', 'jose', 'joc', 'usuario');
INSERT INTO usuarios(email, nombre, apellido, rol) values ('rosa@email.com', 'rosa', 'roc', 'usuario');

select * from usuarios;

create table post (id serial, titulo varchar, contenido text, fecha_creacion date, fecha_actualizacion date, destacado boolean, usuario_id bigint);

select * from post;

alter table post rename to posts;

select * from posts;

insert into posts (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values('kinesiologo', 'hospital el pino', '01/04/2022', '05/05/2022', 'true', '1');
insert into posts (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values('enfermera', 'hospital el carmen', '07/08/2022', '06/09/2022', 'false', '2');
insert into posts (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values('fonoaudiologo', 'cesfam dr ivan insunza', '01/03/2022', '02/03/2022', 'true', '1');
insert into posts (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values('kinesiologa', 'cesfam san jose de chuchunco', '11/12/2022', '12/12/2022', 'true', '3');
insert into posts (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values('medico', 'hospital el carmen', '08/04/2022', '15/05/2022', 'true', null);

create table comentarios (id serial, contenido varchar, fecha_creacion date, usuario_id bigint, post_id bigint);

select * from comentarios;

insert into comentarios (contenido, fecha_creacion, usuario_id, post_id) values ('comentario generico', '04/05/2022', 1, 1);
insert into comentarios (contenido, fecha_creacion, usuario_id, post_id) values ('discurso fome', '08/08/2022', 2, 1);
insert into comentarios (contenido, fecha_creacion, usuario_id, post_id) values ('cometario ingenioso', '02/03/2022', 3, 1);
insert into comentarios (contenido, fecha_creacion, usuario_id, post_id) values ('comentario predecible', '11/12/2022', 1, 2);
insert into comentarios (contenido, fecha_creacion, usuario_id, post_id) values ('comentario funable', '09/04/2022', 2,2 );

select * from comentarios;

--Cruza los datos de la tabla usuarios y posts mostrando las siguientes columnas nombre e email del usuario junto al título y contenido del post. 

select nombre, email, titulo, contenido from usuarios u
join posts p
on 

--Muestra el id, título y contenido de los posts de los administradores. El administrador puede ser cualquier id y debe ser seleccionado dinámicamente.

select p.id, titulo, contenido from usuarios u
join posts p
on u.id = p.usuario_id
where rol = 'administrador'

--Cuenta la cantidad de posts de cada usuario. La tabla resultante debe mostrar el id e email del usuario junto con la cantidad de posts de cada usuario. 

select u.id, email, count(p.id) as cantidad from usuarios u
left join posts p
on u.id = p.usuario_id
group by u.id, u.email
order by cantidad desc;

--Muestra el email del usuario que ha creado más posts. Aquí la tabla resultante tiene un único registro y muestra solo el email. 

select max(email), count(email) from usuarios u
join posts p
on u.id = p.usuario_id
group by u.id, email
limit 1;

--Muestra la fecha del último post de cada usuario. 

select nombre, max(fecha_creacion) from (select p.id, p.contenido, p.fecha_creacion, u.nombre from usuarios u
join posts p
on u.id = p.usuario_id) as t 
group by t.nombre;

--Muestra el título y contenido del post (artículo) con más comentarios.

select titulo, contenido from posts p
join (select post_id, count(post_id) as cantidad
from comentarios group by post_id order by cantidad desc limit 1) as c
ON c.post_id=p.id

/* Muestra en una tabla el título de cada post, el contenido de cada post y el contenido
de cada comentario asociado a los posts mostrados, junto con el email del usuario
que lo escribió. */

select p.titulo as titulo_post, p.contenido as contenido_post, c.contenido as contenido_comentario, u.email from posts p
join comentarios c
on p.id = c.post_id
join usuarios u
on c.usuario_id = u.id;

-- Muestra el contenido del último comentario de cada usuario. 

select fecha_creacion, contenido, usuario_id from comentarios c
join usuarios u
on c.usuario_id = u.id where fecha_creacion = (select max(fecha_creacion) from comentarios where usuario_id = u.id)

--Muestra los emails de los usuarios que no han escrito ningún comentario.

select email from usuarios u
left join comentarios c
on c.usuario_id = u.id
group by email having count (c.id) = 0

