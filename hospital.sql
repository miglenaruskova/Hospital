PGDMP                 
    	    z           hospital    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16395    hospital    DATABASE     S   CREATE DATABASE hospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE hospital;
                postgres    false            ?            1259    16407    doctor    TABLE       CREATE TABLE public.doctor (
    doctor_id integer NOT NULL,
    doctor_name character varying(100) NOT NULL,
    hospital_id integer NOT NULL,
    joining_date date NOT NULL,
    speciality character varying(100) NOT NULL,
    salary integer NOT NULL,
    experience smallint
);
    DROP TABLE public.doctor;
       public         heap    postgres    false            ?            1259    16405    doctor_doctor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.doctor_doctor_id_seq;
       public          postgres    false    214                       0    0    doctor_doctor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.doctor_doctor_id_seq OWNED BY public.doctor.doctor_id;
          public          postgres    false    212            ?            1259    16406    doctor_hospital_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_hospital_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.doctor_hospital_id_seq;
       public          postgres    false    214                       0    0    doctor_hospital_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.doctor_hospital_id_seq OWNED BY public.doctor.hospital_id;
          public          postgres    false    213            ?            1259    16398    hospital    TABLE     ?   CREATE TABLE public.hospital (
    hospital_id integer NOT NULL,
    hospital_name character varying(100) NOT NULL,
    bed_count integer NOT NULL
);
    DROP TABLE public.hospital;
       public         heap    postgres    false            ?            1259    16397    hospital_bed_count_seq    SEQUENCE     ?   CREATE SEQUENCE public.hospital_bed_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hospital_bed_count_seq;
       public          postgres    false    211                       0    0    hospital_bed_count_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hospital_bed_count_seq OWNED BY public.hospital.bed_count;
          public          postgres    false    210            ?            1259    16396    hospital_hospital_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.hospital_hospital_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.hospital_hospital_id_seq;
       public          postgres    false    211                       0    0    hospital_hospital_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.hospital_hospital_id_seq OWNED BY public.hospital.hospital_id;
          public          postgres    false    209            o           2604    16410    doctor doctor_id    DEFAULT     t   ALTER TABLE ONLY public.doctor ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctor_doctor_id_seq'::regclass);
 ?   ALTER TABLE public.doctor ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    214    212    214            p           2604    16411    doctor hospital_id    DEFAULT     x   ALTER TABLE ONLY public.doctor ALTER COLUMN hospital_id SET DEFAULT nextval('public.doctor_hospital_id_seq'::regclass);
 A   ALTER TABLE public.doctor ALTER COLUMN hospital_id DROP DEFAULT;
       public          postgres    false    214    213    214            m           2604    16401    hospital hospital_id    DEFAULT     |   ALTER TABLE ONLY public.hospital ALTER COLUMN hospital_id SET DEFAULT nextval('public.hospital_hospital_id_seq'::regclass);
 C   ALTER TABLE public.hospital ALTER COLUMN hospital_id DROP DEFAULT;
       public          postgres    false    209    211    211            n           2604    16402    hospital bed_count    DEFAULT     x   ALTER TABLE ONLY public.hospital ALTER COLUMN bed_count SET DEFAULT nextval('public.hospital_bed_count_seq'::regclass);
 A   ALTER TABLE public.hospital ALTER COLUMN bed_count DROP DEFAULT;
       public          postgres    false    210    211    211                      0    16407    doctor 
   TABLE DATA           s   COPY public.doctor (doctor_id, doctor_name, hospital_id, joining_date, speciality, salary, experience) FROM stdin;
    public          postgres    false    214   =                 0    16398    hospital 
   TABLE DATA           I   COPY public.hospital (hospital_id, hospital_name, bed_count) FROM stdin;
    public          postgres    false    211   ?                  0    0    doctor_doctor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.doctor_doctor_id_seq', 1, false);
          public          postgres    false    212                       0    0    doctor_hospital_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.doctor_hospital_id_seq', 1, false);
          public          postgres    false    213                       0    0    hospital_bed_count_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hospital_bed_count_seq', 1, false);
          public          postgres    false    210                       0    0    hospital_hospital_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.hospital_hospital_id_seq', 1, false);
          public          postgres    false    209            t           2606    16413    doctor doctor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (doctor_id);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    214            r           2606    16404    hospital hospital_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.hospital
    ADD CONSTRAINT hospital_pkey PRIMARY KEY (hospital_id);
 @   ALTER TABLE ONLY public.hospital DROP CONSTRAINT hospital_pkey;
       public            postgres    false    211               [  x???Mj?0??????F?cg????"?lT[????[??;R?BA??<?g?1r???? ?[?C?f?z?v????s?\????q9?=?^?\???95\?޾?ڃH??f\Ã?^/???V0?w?s?c(???)?@??l[?'2}N1N???Y?kz;??Շ??^?fH;?x??%/??;Ғq????3?7?r?_??hSY???"M??` ?΀D?e"$A^C?*?@V	b?Ik:U???G?<??H~?z???w?	??]??'n?(Z?]???O ?F[???@??6un?u?t???qw5ܴ?Ư 
k??$???$U??}???`???=V         ?  x?u??N?@???S?	L?Oi9J=??? Ƌ?6?a?5?????j:d=v
?t???J]\RZӘ-?4?p(?>k???oYbY??;4!yt?G?`)%??????;?U6)u?j,?W??Qc???????JWl?a??YG??1??P:|C??ڴ??8l\}?b???y????Y??F??\[L?2;e???????x?wgҧ?u??U??֧????"??blή&????6????l????7?,k]????Ԅ<?ɞ??n?X?m??R6.?_Ś@>^?YﾈYћ?$?!=?8W?X	?轚fO?,RH???1u?[?C?3?H{??)Te+<8?o??E?Q?n?k??(j1_??Oe?	?,e??c?BKe???D]???OK?viqޜHd$?8zG???n2?? ??H?     