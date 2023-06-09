toc.dat                                                                                             0000600 0004000 0002000 00000063062 14376215664 0014464 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                            {            Crm    14.5    14.5 X    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         S           1262    25561    Crm    DATABASE     d   CREATE DATABASE "Crm" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Crm";
                postgres    false         æ            1255    25562    us_st_trigger()    FUNCTION     °   CREATE FUNCTION public.us_st_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin 
insert into "staff" (fecha_inicio) values (current_timestamp);
return new;
end
$$;
 &   DROP FUNCTION public.us_st_trigger();
       public          postgres    false         Ñ            1259    25563    client    TABLE     +  CREATE TABLE public.client (
    id_client smallint NOT NULL,
    firstname character varying(60),
    lastname character varying(60),
    cc character varying(12),
    numbercelphone character varying(16),
    mail character varying(50),
    status boolean,
    relation_staff smallint NOT NULL
);
    DROP TABLE public.client;
       public         heap    postgres    false         Ò            1259    25566    client_id_client_seq    SEQUENCE        CREATE SEQUENCE public.client_id_client_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_id_client_seq;
       public          postgres    false    209         T           0    0    client_id_client_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_id_client_seq OWNED BY public.client.id_client;
          public          postgres    false    210         Ó            1259    25567    client_relation_staff_seq    SEQUENCE        CREATE SEQUENCE public.client_relation_staff_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.client_relation_staff_seq;
       public          postgres    false    209         U           0    0    client_relation_staff_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.client_relation_staff_seq OWNED BY public.client.relation_staff;
          public          postgres    false    211         Ô            1259    25568    envio_p    TABLE     k   CREATE TABLE public.envio_p (
    id_envioproduct smallint NOT NULL,
    rela_cliente smallint NOT NULL
);
    DROP TABLE public.envio_p;
       public         heap    postgres    false         Õ            1259    25571    envio_p_id_envioproduct_seq    SEQUENCE        CREATE SEQUENCE public.envio_p_id_envioproduct_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.envio_p_id_envioproduct_seq;
       public          postgres    false    212         V           0    0    envio_p_id_envioproduct_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.envio_p_id_envioproduct_seq OWNED BY public.envio_p.id_envioproduct;
          public          postgres    false    213         Ö            1259    25572    envio_p_rela_cliente_seq    SEQUENCE        CREATE SEQUENCE public.envio_p_rela_cliente_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.envio_p_rela_cliente_seq;
       public          postgres    false    212         W           0    0    envio_p_rela_cliente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.envio_p_rela_cliente_seq OWNED BY public.envio_p.rela_cliente;
          public          postgres    false    214         ×            1259    25573    localization    TABLE     ³   CREATE TABLE public.localization (
    id_local_clien smallint NOT NULL,
    department character varying(30),
    city character varying(30),
    addres character varying(60)
);
     DROP TABLE public.localization;
       public         heap    postgres    false         Ø            1259    25576    localization_id_local_clien_seq    SEQUENCE        CREATE SEQUENCE public.localization_id_local_clien_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.localization_id_local_clien_seq;
       public          postgres    false    215         X           0    0    localization_id_local_clien_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.localization_id_local_clien_seq OWNED BY public.localization.id_local_clien;
          public          postgres    false    216         Ù            1259    25577    personaldats    TABLE     Û   CREATE TABLE public.personaldats (
    id_personalid smallint NOT NULL,
    firstname character varying(60),
    lastname character varying(60),
    cc character varying(12),
    numbercelphone character varying(16)
);
     DROP TABLE public.personaldats;
       public         heap    postgres    false         Ú            1259    25580    personaldats_id_personalid_seq    SEQUENCE        CREATE SEQUENCE public.personaldats_id_personalid_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.personaldats_id_personalid_seq;
       public          postgres    false    217         Y           0    0    personaldats_id_personalid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.personaldats_id_personalid_seq OWNED BY public.personaldats.id_personalid;
          public          postgres    false    218         Û            1259    25581    product    TABLE     ö   CREATE TABLE public.product (
    id_product smallint NOT NULL,
    nameproduct character varying(30) NOT NULL,
    price integer NOT NULL,
    description character varying(200) NOT NULL,
    discount character varying(3),
    status boolean
);
    DROP TABLE public.product;
       public         heap    postgres    false         Ü            1259    25584    product_id_product_seq    SEQUENCE        CREATE SEQUENCE public.product_id_product_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_id_product_seq;
       public          postgres    false    219         Z           0    0    product_id_product_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_id_product_seq OWNED BY public.product.id_product;
          public          postgres    false    220         Ý            1259    25585 	   quotation    TABLE        CREATE TABLE public.quotation (
    id_quotation smallint NOT NULL,
    valor character varying(30),
    cliente_coti smallint NOT NULL
);
    DROP TABLE public.quotation;
       public         heap    postgres    false         Þ            1259    25588    quotation_cliente_coti_seq    SEQUENCE        CREATE SEQUENCE public.quotation_cliente_coti_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.quotation_cliente_coti_seq;
       public          postgres    false    221         [           0    0    quotation_cliente_coti_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.quotation_cliente_coti_seq OWNED BY public.quotation.cliente_coti;
          public          postgres    false    222         ß            1259    25589    quotation_id_quotation_seq    SEQUENCE        CREATE SEQUENCE public.quotation_id_quotation_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.quotation_id_quotation_seq;
       public          postgres    false    221         \           0    0    quotation_id_quotation_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.quotation_id_quotation_seq OWNED BY public.quotation.id_quotation;
          public          postgres    false    223         à            1259    25590    sent_quotation    TABLE     £   CREATE TABLE public.sent_quotation (
    id_sent_quotation smallint NOT NULL,
    nombre_usuario character varying(30),
    nomb_cli_coti character varying(30)
);
 "   DROP TABLE public.sent_quotation;
       public         heap    postgres    false         á            1259    25593 $   sent_quotation_id_sent_quotation_seq    SEQUENCE        CREATE SEQUENCE public.sent_quotation_id_sent_quotation_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.sent_quotation_id_sent_quotation_seq;
       public          postgres    false    224         ]           0    0 $   sent_quotation_id_sent_quotation_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.sent_quotation_id_sent_quotation_seq OWNED BY public.sent_quotation.id_sent_quotation;
          public          postgres    false    225         â            1259    25594    staff    TABLE     l   CREATE TABLE public.staff (
    id_staff smallint NOT NULL,
    fecha_inicio timestamp without time zone
);
    DROP TABLE public.staff;
       public         heap    postgres    false         ã            1259    25597    staff_id_staff_seq    SEQUENCE        CREATE SEQUENCE public.staff_id_staff_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_id_staff_seq;
       public          postgres    false    226         ^           0    0    staff_id_staff_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_id_staff_seq OWNED BY public.staff.id_staff;
          public          postgres    false    227         ä            1259    25598    usuario    TABLE     §   CREATE TABLE public.usuario (
    id_users smallint NOT NULL,
    email character varying(30),
    pass character varying(30),
    tipo boolean,
    status boolean
);
    DROP TABLE public.usuario;
       public         heap    postgres    false         å            1259    25601    usuario_id_users_seq    SEQUENCE        CREATE SEQUENCE public.usuario_id_users_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.usuario_id_users_seq;
       public          postgres    false    228         _           0    0    usuario_id_users_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.usuario_id_users_seq OWNED BY public.usuario.id_users;
          public          postgres    false    229                    2604    25602    client id_client    DEFAULT     t   ALTER TABLE ONLY public.client ALTER COLUMN id_client SET DEFAULT nextval('public.client_id_client_seq'::regclass);
 ?   ALTER TABLE public.client ALTER COLUMN id_client DROP DEFAULT;
       public          postgres    false    210    209                    2604    25603    client relation_staff    DEFAULT     ~   ALTER TABLE ONLY public.client ALTER COLUMN relation_staff SET DEFAULT nextval('public.client_relation_staff_seq'::regclass);
 D   ALTER TABLE public.client ALTER COLUMN relation_staff DROP DEFAULT;
       public          postgres    false    211    209                    2604    25604    envio_p id_envioproduct    DEFAULT        ALTER TABLE ONLY public.envio_p ALTER COLUMN id_envioproduct SET DEFAULT nextval('public.envio_p_id_envioproduct_seq'::regclass);
 F   ALTER TABLE public.envio_p ALTER COLUMN id_envioproduct DROP DEFAULT;
       public          postgres    false    213    212                    2604    25605    envio_p rela_cliente    DEFAULT     |   ALTER TABLE ONLY public.envio_p ALTER COLUMN rela_cliente SET DEFAULT nextval('public.envio_p_rela_cliente_seq'::regclass);
 C   ALTER TABLE public.envio_p ALTER COLUMN rela_cliente DROP DEFAULT;
       public          postgres    false    214    212                    2604    25606    localization id_local_clien    DEFAULT        ALTER TABLE ONLY public.localization ALTER COLUMN id_local_clien SET DEFAULT nextval('public.localization_id_local_clien_seq'::regclass);
 J   ALTER TABLE public.localization ALTER COLUMN id_local_clien DROP DEFAULT;
       public          postgres    false    216    215                    2604    25607    personaldats id_personalid    DEFAULT        ALTER TABLE ONLY public.personaldats ALTER COLUMN id_personalid SET DEFAULT nextval('public.personaldats_id_personalid_seq'::regclass);
 I   ALTER TABLE public.personaldats ALTER COLUMN id_personalid DROP DEFAULT;
       public          postgres    false    218    217                    2604    25608    product id_product    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN id_product SET DEFAULT nextval('public.product_id_product_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN id_product DROP DEFAULT;
       public          postgres    false    220    219                    2604    25609    quotation id_quotation    DEFAULT        ALTER TABLE ONLY public.quotation ALTER COLUMN id_quotation SET DEFAULT nextval('public.quotation_id_quotation_seq'::regclass);
 E   ALTER TABLE public.quotation ALTER COLUMN id_quotation DROP DEFAULT;
       public          postgres    false    223    221                    2604    25610    quotation cliente_coti    DEFAULT        ALTER TABLE ONLY public.quotation ALTER COLUMN cliente_coti SET DEFAULT nextval('public.quotation_cliente_coti_seq'::regclass);
 E   ALTER TABLE public.quotation ALTER COLUMN cliente_coti DROP DEFAULT;
       public          postgres    false    222    221                    2604    25611     sent_quotation id_sent_quotation    DEFAULT        ALTER TABLE ONLY public.sent_quotation ALTER COLUMN id_sent_quotation SET DEFAULT nextval('public.sent_quotation_id_sent_quotation_seq'::regclass);
 O   ALTER TABLE public.sent_quotation ALTER COLUMN id_sent_quotation DROP DEFAULT;
       public          postgres    false    225    224                    2604    25612    staff id_staff    DEFAULT     p   ALTER TABLE ONLY public.staff ALTER COLUMN id_staff SET DEFAULT nextval('public.staff_id_staff_seq'::regclass);
 =   ALTER TABLE public.staff ALTER COLUMN id_staff DROP DEFAULT;
       public          postgres    false    227    226                    2604    25613    usuario id_users    DEFAULT     t   ALTER TABLE ONLY public.usuario ALTER COLUMN id_users SET DEFAULT nextval('public.usuario_id_users_seq'::regclass);
 ?   ALTER TABLE public.usuario ALTER COLUMN id_users DROP DEFAULT;
       public          postgres    false    229    228         9          0    25563    client 
   TABLE DATA           r   COPY public.client (id_client, firstname, lastname, cc, numbercelphone, mail, status, relation_staff) FROM stdin;
    public          postgres    false    209       3385.dat <          0    25568    envio_p 
   TABLE DATA           @   COPY public.envio_p (id_envioproduct, rela_cliente) FROM stdin;
    public          postgres    false    212       3388.dat ?          0    25573    localization 
   TABLE DATA           P   COPY public.localization (id_local_clien, department, city, addres) FROM stdin;
    public          postgres    false    215       3391.dat A          0    25577    personaldats 
   TABLE DATA           ^   COPY public.personaldats (id_personalid, firstname, lastname, cc, numbercelphone) FROM stdin;
    public          postgres    false    217       3393.dat C          0    25581    product 
   TABLE DATA           `   COPY public.product (id_product, nameproduct, price, description, discount, status) FROM stdin;
    public          postgres    false    219       3395.dat E          0    25585 	   quotation 
   TABLE DATA           F   COPY public.quotation (id_quotation, valor, cliente_coti) FROM stdin;
    public          postgres    false    221       3397.dat H          0    25590    sent_quotation 
   TABLE DATA           Z   COPY public.sent_quotation (id_sent_quotation, nombre_usuario, nomb_cli_coti) FROM stdin;
    public          postgres    false    224       3400.dat J          0    25594    staff 
   TABLE DATA           7   COPY public.staff (id_staff, fecha_inicio) FROM stdin;
    public          postgres    false    226       3402.dat L          0    25598    usuario 
   TABLE DATA           F   COPY public.usuario (id_users, email, pass, tipo, status) FROM stdin;
    public          postgres    false    228       3404.dat `           0    0    client_id_client_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.client_id_client_seq', 4, true);
          public          postgres    false    210         a           0    0    client_relation_staff_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.client_relation_staff_seq', 1, false);
          public          postgres    false    211         b           0    0    envio_p_id_envioproduct_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.envio_p_id_envioproduct_seq', 1, false);
          public          postgres    false    213         c           0    0    envio_p_rela_cliente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.envio_p_rela_cliente_seq', 1, false);
          public          postgres    false    214         d           0    0    localization_id_local_clien_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.localization_id_local_clien_seq', 1, false);
          public          postgres    false    216         e           0    0    personaldats_id_personalid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personaldats_id_personalid_seq', 2, true);
          public          postgres    false    218         f           0    0    product_id_product_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_id_product_seq', 3, true);
          public          postgres    false    220         g           0    0    quotation_cliente_coti_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.quotation_cliente_coti_seq', 1, false);
          public          postgres    false    222         h           0    0    quotation_id_quotation_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.quotation_id_quotation_seq', 1, false);
          public          postgres    false    223         i           0    0 $   sent_quotation_id_sent_quotation_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.sent_quotation_id_sent_quotation_seq', 1, false);
          public          postgres    false    225         j           0    0    staff_id_staff_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.staff_id_staff_seq', 29, true);
          public          postgres    false    227         k           0    0    usuario_id_users_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.usuario_id_users_seq', 2, true);
          public          postgres    false    229                    2606    25615    client client_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_client);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    209                    2606    25617    envio_p envio_p_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.envio_p
    ADD CONSTRAINT envio_p_pkey PRIMARY KEY (id_envioproduct);
 >   ALTER TABLE ONLY public.envio_p DROP CONSTRAINT envio_p_pkey;
       public            postgres    false    212                    2606    25619    localization localization_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.localization
    ADD CONSTRAINT localization_pkey PRIMARY KEY (id_local_clien);
 H   ALTER TABLE ONLY public.localization DROP CONSTRAINT localization_pkey;
       public            postgres    false    215                    2606    25621    personaldats personaldats_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.personaldats
    ADD CONSTRAINT personaldats_pkey PRIMARY KEY (id_personalid);
 H   ALTER TABLE ONLY public.personaldats DROP CONSTRAINT personaldats_pkey;
       public            postgres    false    217                    2606    25623    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id_product);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    219                    2606    25625    quotation quotation_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT quotation_pkey PRIMARY KEY (id_quotation);
 B   ALTER TABLE ONLY public.quotation DROP CONSTRAINT quotation_pkey;
       public            postgres    false    221         ¡           2606    25627 "   sent_quotation sent_quotation_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.sent_quotation
    ADD CONSTRAINT sent_quotation_pkey PRIMARY KEY (id_sent_quotation);
 L   ALTER TABLE ONLY public.sent_quotation DROP CONSTRAINT sent_quotation_pkey;
       public            postgres    false    224         £           2606    25629    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id_staff);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    226         ¥           2606    25631    usuario usuario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_users);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    228         ­           2620    25632    usuario us_st_update    TRIGGER     r   CREATE TRIGGER us_st_update BEFORE INSERT ON public.usuario FOR EACH ROW EXECUTE FUNCTION public.us_st_trigger();
 -   DROP TRIGGER us_st_update ON public.usuario;
       public          postgres    false    230    228         §           2606    25633    envio_p fk_client    FK CONSTRAINT     }   ALTER TABLE ONLY public.envio_p
    ADD CONSTRAINT fk_client FOREIGN KEY (rela_cliente) REFERENCES public.client(id_client);
 ;   ALTER TABLE ONLY public.envio_p DROP CONSTRAINT fk_client;
       public          postgres    false    212    209    3221         ª           2606    25638    quotation fk_client    FK CONSTRAINT        ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT fk_client FOREIGN KEY (cliente_coti) REFERENCES public.client(id_client);
 =   ALTER TABLE ONLY public.quotation DROP CONSTRAINT fk_client;
       public          postgres    false    209    3221    221         ¦           2606    25643    client fk_usuario    FK CONSTRAINT     }   ALTER TABLE ONLY public.client
    ADD CONSTRAINT fk_usuario FOREIGN KEY (relation_staff) REFERENCES public.staff(id_staff);
 ;   ALTER TABLE ONLY public.client DROP CONSTRAINT fk_usuario;
       public          postgres    false    226    3235    209         ¨           2606    25648 -   localization localization_id_local_clien_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.localization
    ADD CONSTRAINT localization_id_local_clien_fkey FOREIGN KEY (id_local_clien) REFERENCES public.client(id_client);
 W   ALTER TABLE ONLY public.localization DROP CONSTRAINT localization_id_local_clien_fkey;
       public          postgres    false    209    3221    215         ©           2606    25653 ,   personaldats personaldats_id_personalid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.personaldats
    ADD CONSTRAINT personaldats_id_personalid_fkey FOREIGN KEY (id_personalid) REFERENCES public.usuario(id_users);
 V   ALTER TABLE ONLY public.personaldats DROP CONSTRAINT personaldats_id_personalid_fkey;
       public          postgres    false    228    217    3237         «           2606    25658 %   quotation quotation_id_quotation_fkey    FK CONSTRAINT     ¡   ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT quotation_id_quotation_fkey FOREIGN KEY (id_quotation) REFERENCES public.sent_quotation(id_sent_quotation);
 O   ALTER TABLE ONLY public.quotation DROP CONSTRAINT quotation_id_quotation_fkey;
       public          postgres    false    221    224    3233         ¬           2606    25663    usuario usuario_id_users_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_users_fkey FOREIGN KEY (id_users) REFERENCES public.staff(id_staff);
 G   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_id_users_fkey;
       public          postgres    false    226    3235    228                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      3385.dat                                                                                            0000600 0004000 0002000 00000000363 14376215664 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Camila	Hernandez	1023854456	312456987	camilaH@gmail.com	t	1
3	mila	Hernandez	1023854996	312456987	ml@gmail.com	t	3
4	Zamira	Mogollon	1024587695	3157698425	zamiraG@hotmail.com	t	2
2	Sona	Hernandez	1027554456	SoH@gmail.com	3157698425	f	2
\.


                                                                                                                                                                                                                                                                             3388.dat                                                                                            0000600 0004000 0002000 00000000005 14376215664 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3391.dat                                                                                            0000600 0004000 0002000 00000000005 14376215664 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3393.dat                                                                                            0000600 0004000 0002000 00000000123 14376215664 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Alexis	Linares	1023929372	3153087217
2	Sergio	Ducuara	1023974646	3202813850
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3395.dat                                                                                            0000600 0004000 0002000 00000001033 14376215664 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	archivo rodante	10000000	 Archivo rodante con especificaciones 3 metros ancho x 2,5 metros de alto x 3 metros de produndidad color gris metalico.	8%	t
3	Silla para cubiculo	150000	Silla sencilla con rodachinas para cubÃ­culo empresarial sin brazos laterales con tapizado verde oscuro.	0%	t
1	silla de oficina gerencial	1200000	Silla de oficina gerencial negra, con cabecero ajustable,  reclinable con  especificaciones  42 cm en malla de tela ,10 cm bandeja de asiento con ancho de 47cm en metal reforzado con acabado cromado.	5%	f
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3397.dat                                                                                            0000600 0004000 0002000 00000000005 14376215664 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3400.dat                                                                                            0000600 0004000 0002000 00000000005 14376215664 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3402.dat                                                                                            0000600 0004000 0002000 00000001537 14376215664 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2023-01-29 20:31:10.03993
2	2023-01-29 20:42:59.480095
3	2023-02-02 19:58:13.395548
4	2023-02-02 20:41:42.367765
5	2023-02-02 20:41:42.367765
6	2023-02-02 20:41:42.367765
7	2023-02-02 20:41:42.367765
8	2023-02-02 22:38:11.142935
9	2023-02-07 22:04:04.208293
10	2023-02-07 22:49:37.761849
11	2023-02-09 21:30:17.295335
12	2023-02-09 21:33:38.960295
13	2023-02-09 22:53:20.299519
14	2023-02-10 21:50:43.875228
15	2023-02-12 16:10:57.443407
16	2023-02-12 16:17:41.677411
17	2023-02-12 16:20:38.461056
18	2023-02-12 16:22:04.56326
19	2023-02-12 16:28:41.724208
20	2023-02-12 16:35:33.819768
21	2023-02-12 16:40:06.196244
22	2023-02-12 16:52:04.819555
23	2023-02-12 17:02:43.367355
24	2023-02-12 17:04:07.044355
25	2023-02-12 17:07:01.699283
26	2023-02-12 17:13:29.23408
27	2023-02-12 18:09:42.383449
28	2023-02-12 18:24:26.729745
29	2023-02-12 20:12:20.258088
\.


                                                                                                                                                                 3404.dat                                                                                            0000600 0004000 0002000 00000000115 14376215664 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1alexis.linares@gmail.com	741285	t	t
2	dranvius12@gmail.com	1234*	f	t
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000050655 14376215664 0015415 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

DROP DATABASE "Crm";
--
-- Name: Crm; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Crm" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE "Crm" OWNER TO postgres;

\connect "Crm"

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

--
-- Name: us_st_trigger(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.us_st_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin 
insert into "staff" (fecha_inicio) values (current_timestamp);
return new;
end
$$;


ALTER FUNCTION public.us_st_trigger() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id_client smallint NOT NULL,
    firstname character varying(60),
    lastname character varying(60),
    cc character varying(12),
    numbercelphone character varying(16),
    mail character varying(50),
    status boolean,
    relation_staff smallint NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- Name: client_id_client_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_client_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_client_seq OWNER TO postgres;

--
-- Name: client_id_client_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_client_seq OWNED BY public.client.id_client;


--
-- Name: client_relation_staff_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_relation_staff_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_relation_staff_seq OWNER TO postgres;

--
-- Name: client_relation_staff_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_relation_staff_seq OWNED BY public.client.relation_staff;


--
-- Name: envio_p; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.envio_p (
    id_envioproduct smallint NOT NULL,
    rela_cliente smallint NOT NULL
);


ALTER TABLE public.envio_p OWNER TO postgres;

--
-- Name: envio_p_id_envioproduct_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.envio_p_id_envioproduct_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.envio_p_id_envioproduct_seq OWNER TO postgres;

--
-- Name: envio_p_id_envioproduct_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.envio_p_id_envioproduct_seq OWNED BY public.envio_p.id_envioproduct;


--
-- Name: envio_p_rela_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.envio_p_rela_cliente_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.envio_p_rela_cliente_seq OWNER TO postgres;

--
-- Name: envio_p_rela_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.envio_p_rela_cliente_seq OWNED BY public.envio_p.rela_cliente;


--
-- Name: localization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.localization (
    id_local_clien smallint NOT NULL,
    department character varying(30),
    city character varying(30),
    addres character varying(60)
);


ALTER TABLE public.localization OWNER TO postgres;

--
-- Name: localization_id_local_clien_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.localization_id_local_clien_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.localization_id_local_clien_seq OWNER TO postgres;

--
-- Name: localization_id_local_clien_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.localization_id_local_clien_seq OWNED BY public.localization.id_local_clien;


--
-- Name: personaldats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personaldats (
    id_personalid smallint NOT NULL,
    firstname character varying(60),
    lastname character varying(60),
    cc character varying(12),
    numbercelphone character varying(16)
);


ALTER TABLE public.personaldats OWNER TO postgres;

--
-- Name: personaldats_id_personalid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personaldats_id_personalid_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personaldats_id_personalid_seq OWNER TO postgres;

--
-- Name: personaldats_id_personalid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personaldats_id_personalid_seq OWNED BY public.personaldats.id_personalid;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id_product smallint NOT NULL,
    nameproduct character varying(30) NOT NULL,
    price integer NOT NULL,
    description character varying(200) NOT NULL,
    discount character varying(3),
    status boolean
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_id_product_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_product_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_product_seq OWNER TO postgres;

--
-- Name: product_id_product_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_product_seq OWNED BY public.product.id_product;


--
-- Name: quotation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quotation (
    id_quotation smallint NOT NULL,
    valor character varying(30),
    cliente_coti smallint NOT NULL
);


ALTER TABLE public.quotation OWNER TO postgres;

--
-- Name: quotation_cliente_coti_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quotation_cliente_coti_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotation_cliente_coti_seq OWNER TO postgres;

--
-- Name: quotation_cliente_coti_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quotation_cliente_coti_seq OWNED BY public.quotation.cliente_coti;


--
-- Name: quotation_id_quotation_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quotation_id_quotation_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotation_id_quotation_seq OWNER TO postgres;

--
-- Name: quotation_id_quotation_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quotation_id_quotation_seq OWNED BY public.quotation.id_quotation;


--
-- Name: sent_quotation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sent_quotation (
    id_sent_quotation smallint NOT NULL,
    nombre_usuario character varying(30),
    nomb_cli_coti character varying(30)
);


ALTER TABLE public.sent_quotation OWNER TO postgres;

--
-- Name: sent_quotation_id_sent_quotation_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sent_quotation_id_sent_quotation_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sent_quotation_id_sent_quotation_seq OWNER TO postgres;

--
-- Name: sent_quotation_id_sent_quotation_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sent_quotation_id_sent_quotation_seq OWNED BY public.sent_quotation.id_sent_quotation;


--
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    id_staff smallint NOT NULL,
    fecha_inicio timestamp without time zone
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- Name: staff_id_staff_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staff_id_staff_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staff_id_staff_seq OWNER TO postgres;

--
-- Name: staff_id_staff_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staff_id_staff_seq OWNED BY public.staff.id_staff;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_users smallint NOT NULL,
    email character varying(30),
    pass character varying(30),
    tipo boolean,
    status boolean
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_users_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_users_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_users_seq OWNER TO postgres;

--
-- Name: usuario_id_users_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_users_seq OWNED BY public.usuario.id_users;


--
-- Name: client id_client; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id_client SET DEFAULT nextval('public.client_id_client_seq'::regclass);


--
-- Name: client relation_staff; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN relation_staff SET DEFAULT nextval('public.client_relation_staff_seq'::regclass);


--
-- Name: envio_p id_envioproduct; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio_p ALTER COLUMN id_envioproduct SET DEFAULT nextval('public.envio_p_id_envioproduct_seq'::regclass);


--
-- Name: envio_p rela_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio_p ALTER COLUMN rela_cliente SET DEFAULT nextval('public.envio_p_rela_cliente_seq'::regclass);


--
-- Name: localization id_local_clien; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localization ALTER COLUMN id_local_clien SET DEFAULT nextval('public.localization_id_local_clien_seq'::regclass);


--
-- Name: personaldats id_personalid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personaldats ALTER COLUMN id_personalid SET DEFAULT nextval('public.personaldats_id_personalid_seq'::regclass);


--
-- Name: product id_product; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id_product SET DEFAULT nextval('public.product_id_product_seq'::regclass);


--
-- Name: quotation id_quotation; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation ALTER COLUMN id_quotation SET DEFAULT nextval('public.quotation_id_quotation_seq'::regclass);


--
-- Name: quotation cliente_coti; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation ALTER COLUMN cliente_coti SET DEFAULT nextval('public.quotation_cliente_coti_seq'::regclass);


--
-- Name: sent_quotation id_sent_quotation; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sent_quotation ALTER COLUMN id_sent_quotation SET DEFAULT nextval('public.sent_quotation_id_sent_quotation_seq'::regclass);


--
-- Name: staff id_staff; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff ALTER COLUMN id_staff SET DEFAULT nextval('public.staff_id_staff_seq'::regclass);


--
-- Name: usuario id_users; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_users SET DEFAULT nextval('public.usuario_id_users_seq'::regclass);


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id_client, firstname, lastname, cc, numbercelphone, mail, status, relation_staff) FROM stdin;
\.
COPY public.client (id_client, firstname, lastname, cc, numbercelphone, mail, status, relation_staff) FROM '$$PATH$$/3385.dat';

--
-- Data for Name: envio_p; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.envio_p (id_envioproduct, rela_cliente) FROM stdin;
\.
COPY public.envio_p (id_envioproduct, rela_cliente) FROM '$$PATH$$/3388.dat';

--
-- Data for Name: localization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.localization (id_local_clien, department, city, addres) FROM stdin;
\.
COPY public.localization (id_local_clien, department, city, addres) FROM '$$PATH$$/3391.dat';

--
-- Data for Name: personaldats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personaldats (id_personalid, firstname, lastname, cc, numbercelphone) FROM stdin;
\.
COPY public.personaldats (id_personalid, firstname, lastname, cc, numbercelphone) FROM '$$PATH$$/3393.dat';

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id_product, nameproduct, price, description, discount, status) FROM stdin;
\.
COPY public.product (id_product, nameproduct, price, description, discount, status) FROM '$$PATH$$/3395.dat';

--
-- Data for Name: quotation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quotation (id_quotation, valor, cliente_coti) FROM stdin;
\.
COPY public.quotation (id_quotation, valor, cliente_coti) FROM '$$PATH$$/3397.dat';

--
-- Data for Name: sent_quotation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sent_quotation (id_sent_quotation, nombre_usuario, nomb_cli_coti) FROM stdin;
\.
COPY public.sent_quotation (id_sent_quotation, nombre_usuario, nomb_cli_coti) FROM '$$PATH$$/3400.dat';

--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (id_staff, fecha_inicio) FROM stdin;
\.
COPY public.staff (id_staff, fecha_inicio) FROM '$$PATH$$/3402.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_users, email, pass, tipo, status) FROM stdin;
\.
COPY public.usuario (id_users, email, pass, tipo, status) FROM '$$PATH$$/3404.dat';

--
-- Name: client_id_client_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_client_seq', 4, true);


--
-- Name: client_relation_staff_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_relation_staff_seq', 1, false);


--
-- Name: envio_p_id_envioproduct_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.envio_p_id_envioproduct_seq', 1, false);


--
-- Name: envio_p_rela_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.envio_p_rela_cliente_seq', 1, false);


--
-- Name: localization_id_local_clien_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.localization_id_local_clien_seq', 1, false);


--
-- Name: personaldats_id_personalid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personaldats_id_personalid_seq', 2, true);


--
-- Name: product_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_product_seq', 3, true);


--
-- Name: quotation_cliente_coti_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quotation_cliente_coti_seq', 1, false);


--
-- Name: quotation_id_quotation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quotation_id_quotation_seq', 1, false);


--
-- Name: sent_quotation_id_sent_quotation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sent_quotation_id_sent_quotation_seq', 1, false);


--
-- Name: staff_id_staff_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staff_id_staff_seq', 29, true);


--
-- Name: usuario_id_users_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_users_seq', 2, true);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_client);


--
-- Name: envio_p envio_p_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio_p
    ADD CONSTRAINT envio_p_pkey PRIMARY KEY (id_envioproduct);


--
-- Name: localization localization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localization
    ADD CONSTRAINT localization_pkey PRIMARY KEY (id_local_clien);


--
-- Name: personaldats personaldats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personaldats
    ADD CONSTRAINT personaldats_pkey PRIMARY KEY (id_personalid);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id_product);


--
-- Name: quotation quotation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT quotation_pkey PRIMARY KEY (id_quotation);


--
-- Name: sent_quotation sent_quotation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sent_quotation
    ADD CONSTRAINT sent_quotation_pkey PRIMARY KEY (id_sent_quotation);


--
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id_staff);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_users);


--
-- Name: usuario us_st_update; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER us_st_update BEFORE INSERT ON public.usuario FOR EACH ROW EXECUTE FUNCTION public.us_st_trigger();


--
-- Name: envio_p fk_client; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio_p
    ADD CONSTRAINT fk_client FOREIGN KEY (rela_cliente) REFERENCES public.client(id_client);


--
-- Name: quotation fk_client; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT fk_client FOREIGN KEY (cliente_coti) REFERENCES public.client(id_client);


--
-- Name: client fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT fk_usuario FOREIGN KEY (relation_staff) REFERENCES public.staff(id_staff);


--
-- Name: localization localization_id_local_clien_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localization
    ADD CONSTRAINT localization_id_local_clien_fkey FOREIGN KEY (id_local_clien) REFERENCES public.client(id_client);


--
-- Name: personaldats personaldats_id_personalid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personaldats
    ADD CONSTRAINT personaldats_id_personalid_fkey FOREIGN KEY (id_personalid) REFERENCES public.usuario(id_users);


--
-- Name: quotation quotation_id_quotation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT quotation_id_quotation_fkey FOREIGN KEY (id_quotation) REFERENCES public.sent_quotation(id_sent_quotation);


--
-- Name: usuario usuario_id_users_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_users_fkey FOREIGN KEY (id_users) REFERENCES public.staff(id_staff);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   