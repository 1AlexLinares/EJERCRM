toc.dat                                                                                             0000600 0004000 0002000 00000062310 14400453000 0014427 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           {            Crm    14.5    14.5 V    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         Y           1262    25561    Crm    DATABASE     d   CREATE DATABASE "Crm" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Crm";
                postgres    false         å            1255    25562    us_st_trigger()    FUNCTION     °   CREATE FUNCTION public.us_st_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin 
insert into "staff" (fecha_inicio) values (current_timestamp);
return new;
end
$$;
 &   DROP FUNCTION public.us_st_trigger();
       public          postgres    false         Ü            1259    25875    client    TABLE     "  CREATE TABLE public.client (
    id_client smallint NOT NULL,
    firstname character varying(35),
    lastname character varying(35),
    cc character varying(12),
    numbercelphone character varying(16),
    mail character varying(50),
    statusc boolean,
    relation_staff integer
);
    DROP TABLE public.client;
       public         heap    postgres    false         Û            1259    25874    client_id_client_seq    SEQUENCE        CREATE SEQUENCE public.client_id_client_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_id_client_seq;
       public          postgres    false    220         Z           0    0    client_id_client_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_id_client_seq OWNED BY public.client.id_client;
          public          postgres    false    219         Þ            1259    25888    envio_p    TABLE     d   CREATE TABLE public.envio_p (
    id_envioproduct smallint NOT NULL,
    relation_client integer
);
    DROP TABLE public.envio_p;
       public         heap    postgres    false         Ý            1259    25887    envio_p_id_envioproduct_seq    SEQUENCE        CREATE SEQUENCE public.envio_p_id_envioproduct_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.envio_p_id_envioproduct_seq;
       public          postgres    false    222         [           0    0    envio_p_id_envioproduct_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.envio_p_id_envioproduct_seq OWNED BY public.envio_p.id_envioproduct;
          public          postgres    false    221         ä            1259    25963    localization    TABLE     ´   CREATE TABLE public.localization (
    id_local_clien smallint NOT NULL,
    department character varying(30),
    city character varying(30),
    address character varying(60)
);
     DROP TABLE public.localization;
       public         heap    postgres    false         ã            1259    25962    localization_id_local_clien_seq    SEQUENCE        CREATE SEQUENCE public.localization_id_local_clien_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.localization_id_local_clien_seq;
       public          postgres    false    228         \           0    0    localization_id_local_clien_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.localization_id_local_clien_seq OWNED BY public.localization.id_local_clien;
          public          postgres    false    227         Ñ            1259    25577    personaldats    TABLE     Û   CREATE TABLE public.personaldats (
    id_personalid smallint NOT NULL,
    firstname character varying(60),
    lastname character varying(60),
    cc character varying(12),
    numbercelphone character varying(16)
);
     DROP TABLE public.personaldats;
       public         heap    postgres    false         Ò            1259    25580    personaldats_id_personalid_seq    SEQUENCE        CREATE SEQUENCE public.personaldats_id_personalid_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.personaldats_id_personalid_seq;
       public          postgres    false    209         ]           0    0    personaldats_id_personalid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.personaldats_id_personalid_seq OWNED BY public.personaldats.id_personalid;
          public          postgres    false    210         Ó            1259    25581    product    TABLE     ÷   CREATE TABLE public.product (
    id_product smallint NOT NULL,
    nameproduct character varying(30) NOT NULL,
    price integer NOT NULL,
    description character varying(200) NOT NULL,
    discount character varying(3),
    statusp boolean
);
    DROP TABLE public.product;
       public         heap    postgres    false         Ô            1259    25584    product_id_product_seq    SEQUENCE        CREATE SEQUENCE public.product_id_product_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_id_product_seq;
       public          postgres    false    211         ^           0    0    product_id_product_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_id_product_seq OWNED BY public.product.id_product;
          public          postgres    false    212         à            1259    25918 	   quotation    TABLE        CREATE TABLE public.quotation (
    id_quotation smallint NOT NULL,
    valor_total character varying(15),
    cliente_coti integer
);
    DROP TABLE public.quotation;
       public         heap    postgres    false         ß            1259    25917    quotation_id_quotation_seq    SEQUENCE        CREATE SEQUENCE public.quotation_id_quotation_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.quotation_id_quotation_seq;
       public          postgres    false    224         _           0    0    quotation_id_quotation_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.quotation_id_quotation_seq OWNED BY public.quotation.id_quotation;
          public          postgres    false    223         â            1259    25946    quotation_product    TABLE     ¡   CREATE TABLE public.quotation_product (
    id_quo_pro smallint NOT NULL,
    rela_cotiqp integer,
    rela_prodqp integer,
    address character varying(60)
);
 %   DROP TABLE public.quotation_product;
       public         heap    postgres    false         á            1259    25945     quotation_product_id_quo_pro_seq    SEQUENCE        CREATE SEQUENCE public.quotation_product_id_quo_pro_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.quotation_product_id_quo_pro_seq;
       public          postgres    false    226         `           0    0     quotation_product_id_quo_pro_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.quotation_product_id_quo_pro_seq OWNED BY public.quotation_product.id_quo_pro;
          public          postgres    false    225         Õ            1259    25590    sent_quotation    TABLE     £   CREATE TABLE public.sent_quotation (
    id_sent_quotation smallint NOT NULL,
    nombre_usuario character varying(30),
    nomb_cli_coti character varying(30)
);
 "   DROP TABLE public.sent_quotation;
       public         heap    postgres    false         Ö            1259    25593 $   sent_quotation_id_sent_quotation_seq    SEQUENCE        CREATE SEQUENCE public.sent_quotation_id_sent_quotation_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.sent_quotation_id_sent_quotation_seq;
       public          postgres    false    213         a           0    0 $   sent_quotation_id_sent_quotation_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.sent_quotation_id_sent_quotation_seq OWNED BY public.sent_quotation.id_sent_quotation;
          public          postgres    false    214         ×            1259    25594    staff    TABLE     l   CREATE TABLE public.staff (
    id_staff smallint NOT NULL,
    fecha_inicio timestamp without time zone
);
    DROP TABLE public.staff;
       public         heap    postgres    false         Ø            1259    25597    staff_id_staff_seq    SEQUENCE        CREATE SEQUENCE public.staff_id_staff_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_id_staff_seq;
       public          postgres    false    215         b           0    0    staff_id_staff_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_id_staff_seq OWNED BY public.staff.id_staff;
          public          postgres    false    216         Ù            1259    25598    usuario    TABLE     ¨   CREATE TABLE public.usuario (
    id_users smallint NOT NULL,
    email character varying(30),
    pass character varying(60),
    tipo boolean,
    statusu boolean
);
    DROP TABLE public.usuario;
       public         heap    postgres    false         Ú            1259    25601    usuario_id_users_seq    SEQUENCE        CREATE SEQUENCE public.usuario_id_users_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.usuario_id_users_seq;
       public          postgres    false    217         c           0    0    usuario_id_users_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.usuario_id_users_seq OWNED BY public.usuario.id_users;
          public          postgres    false    218                    2604    25878    client id_client    DEFAULT     t   ALTER TABLE ONLY public.client ALTER COLUMN id_client SET DEFAULT nextval('public.client_id_client_seq'::regclass);
 ?   ALTER TABLE public.client ALTER COLUMN id_client DROP DEFAULT;
       public          postgres    false    220    219    220                    2604    25891    envio_p id_envioproduct    DEFAULT        ALTER TABLE ONLY public.envio_p ALTER COLUMN id_envioproduct SET DEFAULT nextval('public.envio_p_id_envioproduct_seq'::regclass);
 F   ALTER TABLE public.envio_p ALTER COLUMN id_envioproduct DROP DEFAULT;
       public          postgres    false    221    222    222                    2604    25966    localization id_local_clien    DEFAULT        ALTER TABLE ONLY public.localization ALTER COLUMN id_local_clien SET DEFAULT nextval('public.localization_id_local_clien_seq'::regclass);
 J   ALTER TABLE public.localization ALTER COLUMN id_local_clien DROP DEFAULT;
       public          postgres    false    228    227    228                    2604    25607    personaldats id_personalid    DEFAULT        ALTER TABLE ONLY public.personaldats ALTER COLUMN id_personalid SET DEFAULT nextval('public.personaldats_id_personalid_seq'::regclass);
 I   ALTER TABLE public.personaldats ALTER COLUMN id_personalid DROP DEFAULT;
       public          postgres    false    210    209                    2604    25608    product id_product    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN id_product SET DEFAULT nextval('public.product_id_product_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN id_product DROP DEFAULT;
       public          postgres    false    212    211                    2604    25921    quotation id_quotation    DEFAULT        ALTER TABLE ONLY public.quotation ALTER COLUMN id_quotation SET DEFAULT nextval('public.quotation_id_quotation_seq'::regclass);
 E   ALTER TABLE public.quotation ALTER COLUMN id_quotation DROP DEFAULT;
       public          postgres    false    224    223    224                    2604    25949    quotation_product id_quo_pro    DEFAULT        ALTER TABLE ONLY public.quotation_product ALTER COLUMN id_quo_pro SET DEFAULT nextval('public.quotation_product_id_quo_pro_seq'::regclass);
 K   ALTER TABLE public.quotation_product ALTER COLUMN id_quo_pro DROP DEFAULT;
       public          postgres    false    225    226    226                    2604    25611     sent_quotation id_sent_quotation    DEFAULT        ALTER TABLE ONLY public.sent_quotation ALTER COLUMN id_sent_quotation SET DEFAULT nextval('public.sent_quotation_id_sent_quotation_seq'::regclass);
 O   ALTER TABLE public.sent_quotation ALTER COLUMN id_sent_quotation DROP DEFAULT;
       public          postgres    false    214    213                    2604    25612    staff id_staff    DEFAULT     p   ALTER TABLE ONLY public.staff ALTER COLUMN id_staff SET DEFAULT nextval('public.staff_id_staff_seq'::regclass);
 =   ALTER TABLE public.staff ALTER COLUMN id_staff DROP DEFAULT;
       public          postgres    false    216    215                    2604    25613    usuario id_users    DEFAULT     t   ALTER TABLE ONLY public.usuario ALTER COLUMN id_users SET DEFAULT nextval('public.usuario_id_users_seq'::regclass);
 ?   ALTER TABLE public.usuario ALTER COLUMN id_users DROP DEFAULT;
       public          postgres    false    218    217         K          0    25875    client 
   TABLE DATA           s   COPY public.client (id_client, firstname, lastname, cc, numbercelphone, mail, statusc, relation_staff) FROM stdin;
    public          postgres    false    220       3403.dat M          0    25888    envio_p 
   TABLE DATA           C   COPY public.envio_p (id_envioproduct, relation_client) FROM stdin;
    public          postgres    false    222       3405.dat S          0    25963    localization 
   TABLE DATA           Q   COPY public.localization (id_local_clien, department, city, address) FROM stdin;
    public          postgres    false    228       3411.dat @          0    25577    personaldats 
   TABLE DATA           ^   COPY public.personaldats (id_personalid, firstname, lastname, cc, numbercelphone) FROM stdin;
    public          postgres    false    209       3392.dat B          0    25581    product 
   TABLE DATA           a   COPY public.product (id_product, nameproduct, price, description, discount, statusp) FROM stdin;
    public          postgres    false    211       3394.dat O          0    25918 	   quotation 
   TABLE DATA           L   COPY public.quotation (id_quotation, valor_total, cliente_coti) FROM stdin;
    public          postgres    false    224       3407.dat Q          0    25946    quotation_product 
   TABLE DATA           Z   COPY public.quotation_product (id_quo_pro, rela_cotiqp, rela_prodqp, address) FROM stdin;
    public          postgres    false    226       3409.dat D          0    25590    sent_quotation 
   TABLE DATA           Z   COPY public.sent_quotation (id_sent_quotation, nombre_usuario, nomb_cli_coti) FROM stdin;
    public          postgres    false    213       3396.dat F          0    25594    staff 
   TABLE DATA           7   COPY public.staff (id_staff, fecha_inicio) FROM stdin;
    public          postgres    false    215       3398.dat H          0    25598    usuario 
   TABLE DATA           G   COPY public.usuario (id_users, email, pass, tipo, statusu) FROM stdin;
    public          postgres    false    217       3400.dat d           0    0    client_id_client_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.client_id_client_seq', 1, true);
          public          postgres    false    219         e           0    0    envio_p_id_envioproduct_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.envio_p_id_envioproduct_seq', 1, false);
          public          postgres    false    221         f           0    0    localization_id_local_clien_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.localization_id_local_clien_seq', 1, true);
          public          postgres    false    227         g           0    0    personaldats_id_personalid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personaldats_id_personalid_seq', 5, true);
          public          postgres    false    210         h           0    0    product_id_product_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_id_product_seq', 4, true);
          public          postgres    false    212         i           0    0    quotation_id_quotation_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.quotation_id_quotation_seq', 2, true);
          public          postgres    false    223         j           0    0     quotation_product_id_quo_pro_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.quotation_product_id_quo_pro_seq', 5, true);
          public          postgres    false    225         k           0    0 $   sent_quotation_id_sent_quotation_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.sent_quotation_id_sent_quotation_seq', 1, true);
          public          postgres    false    214         l           0    0    staff_id_staff_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.staff_id_staff_seq', 16, true);
          public          postgres    false    216         m           0    0    usuario_id_users_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.usuario_id_users_seq', 5, true);
          public          postgres    false    218         £           2606    25880    client client_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_client);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    220         ¥           2606    25893    envio_p envio_p_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.envio_p
    ADD CONSTRAINT envio_p_pkey PRIMARY KEY (id_envioproduct);
 >   ALTER TABLE ONLY public.envio_p DROP CONSTRAINT envio_p_pkey;
       public            postgres    false    222         «           2606    25968    localization localization_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.localization
    ADD CONSTRAINT localization_pkey PRIMARY KEY (id_local_clien);
 H   ALTER TABLE ONLY public.localization DROP CONSTRAINT localization_pkey;
       public            postgres    false    228                    2606    25621    personaldats personaldats_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.personaldats
    ADD CONSTRAINT personaldats_pkey PRIMARY KEY (id_personalid);
 H   ALTER TABLE ONLY public.personaldats DROP CONSTRAINT personaldats_pkey;
       public            postgres    false    209                    2606    25623    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id_product);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    211         §           2606    25923    quotation quotation_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT quotation_pkey PRIMARY KEY (id_quotation);
 B   ALTER TABLE ONLY public.quotation DROP CONSTRAINT quotation_pkey;
       public            postgres    false    224         ©           2606    25951 (   quotation_product quotation_product_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.quotation_product
    ADD CONSTRAINT quotation_product_pkey PRIMARY KEY (id_quo_pro);
 R   ALTER TABLE ONLY public.quotation_product DROP CONSTRAINT quotation_product_pkey;
       public            postgres    false    226                    2606    25627 "   sent_quotation sent_quotation_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.sent_quotation
    ADD CONSTRAINT sent_quotation_pkey PRIMARY KEY (id_sent_quotation);
 L   ALTER TABLE ONLY public.sent_quotation DROP CONSTRAINT sent_quotation_pkey;
       public            postgres    false    213                    2606    25629    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id_staff);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    215                    2606    25696    personaldats uq_cc 
   CONSTRAINT     K   ALTER TABLE ONLY public.personaldats
    ADD CONSTRAINT uq_cc UNIQUE (cc);
 <   ALTER TABLE ONLY public.personaldats DROP CONSTRAINT uq_cc;
       public            postgres    false    209                    2606    25765    product uq_product 
   CONSTRAINT     S   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uq_product UNIQUE (id_product);
 <   ALTER TABLE ONLY public.product DROP CONSTRAINT uq_product;
       public            postgres    false    211         ¡           2606    25631    usuario usuario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_users);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    217         ´           2620    25632    usuario us_st_update    TRIGGER     r   CREATE TRIGGER us_st_update BEFORE INSERT ON public.usuario FOR EACH ROW EXECUTE FUNCTION public.us_st_trigger();
 -   DROP TRIGGER us_st_update ON public.usuario;
       public          postgres    false    229    217         ¬           2606    25653 ,   personaldats personaldats_id_personalid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.personaldats
    ADD CONSTRAINT personaldats_id_personalid_fkey FOREIGN KEY (id_personalid) REFERENCES public.usuario(id_users);
 V   ALTER TABLE ONLY public.personaldats DROP CONSTRAINT personaldats_id_personalid_fkey;
       public          postgres    false    217    3233    209         °           2606    25924    quotation rela_client_coti    FK CONSTRAINT        ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT rela_client_coti FOREIGN KEY (cliente_coti) REFERENCES public.client(id_client);
 D   ALTER TABLE ONLY public.quotation DROP CONSTRAINT rela_client_coti;
       public          postgres    false    220    224    3235         ¯           2606    25894    envio_p rela_envio    FK CONSTRAINT        ALTER TABLE ONLY public.envio_p
    ADD CONSTRAINT rela_envio FOREIGN KEY (relation_client) REFERENCES public.client(id_client);
 <   ALTER TABLE ONLY public.envio_p DROP CONSTRAINT rela_envio;
       public          postgres    false    3235    220    222         ³           2606    25969    localization rela_local    FK CONSTRAINT        ALTER TABLE ONLY public.localization
    ADD CONSTRAINT rela_local FOREIGN KEY (id_local_clien) REFERENCES public.client(id_client);
 A   ALTER TABLE ONLY public.localization DROP CONSTRAINT rela_local;
       public          postgres    false    3235    228    220         ²           2606    25957 !   quotation_product rela_product_qp    FK CONSTRAINT        ALTER TABLE ONLY public.quotation_product
    ADD CONSTRAINT rela_product_qp FOREIGN KEY (rela_prodqp) REFERENCES public.product(id_product);
 K   ALTER TABLE ONLY public.quotation_product DROP CONSTRAINT rela_product_qp;
       public          postgres    false    3225    226    211         ±           2606    25952    quotation_product rela_quota_qp    FK CONSTRAINT        ALTER TABLE ONLY public.quotation_product
    ADD CONSTRAINT rela_quota_qp FOREIGN KEY (rela_cotiqp) REFERENCES public.quotation(id_quotation);
 I   ALTER TABLE ONLY public.quotation_product DROP CONSTRAINT rela_quota_qp;
       public          postgres    false    224    226    3239         ®           2606    25882    client rela_staff    FK CONSTRAINT     }   ALTER TABLE ONLY public.client
    ADD CONSTRAINT rela_staff FOREIGN KEY (relation_staff) REFERENCES public.staff(id_staff);
 ;   ALTER TABLE ONLY public.client DROP CONSTRAINT rela_staff;
       public          postgres    false    220    215    3231         ­           2606    25663    usuario usuario_id_users_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_users_fkey FOREIGN KEY (id_users) REFERENCES public.staff(id_staff);
 G   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_id_users_fkey;
       public          postgres    false    215    3231    217                                                                                                                                                                                                                                                                                                                                3403.dat                                                                                            0000600 0004000 0002000 00000000070 14400453000 0014226 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Diego	Lopez	89607483	3128407327	dl@gmail.com	t	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3405.dat                                                                                            0000600 0004000 0002000 00000000005 14400453000 0014226 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3411.dat                                                                                            0000600 0004000 0002000 00000000055 14400453000 0014230 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	cundinamarca	bogota	calle 57 # 46-70 
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3392.dat                                                                                            0000600 0004000 0002000 00000000263 14400453000 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Norma	Guerra	1023955	32056
2	Sergio	Linares	1023974646	3202813850
3	Alexis	Linares	24545	31511111111
4	Norma	Mogoyon	102381111	3183139375
5	Samira	Mogoyon	10241	3183139375
\.


                                                                                                                                                                                                                                                                                                                                             3394.dat                                                                                            0000600 0004000 0002000 00000000667 14400453000 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	archivo rodante	10000000	 Archivo rodante con especificaciones 3 metros ancho x 2,5 metros de alto x 3 metros de produndidad color gris metalico.	8%	t
3	Silla de espera 	300000	sillas en fila de cuatro  puestos hecho en aluminio	2%	t
1	silla de  oficina gerencial	1200000	silla gerencial	5%	t
4	Silla para cubiculo	120000	Silla sencilla con rodachinas para cubÃ­culo empresarial sin brazos laterales con tapizado verde oscuro.	1%	t
\.


                                                                         3407.dat                                                                                            0000600 0004000 0002000 00000000022 14400453000 0014227 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	15000000	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3409.dat                                                                                            0000600 0004000 0002000 00000000065 14400453000 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	2	3	calle 57 # 46-70 
5	2	2	calle 57 # 46-70 
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3396.dat                                                                                            0000600 0004000 0002000 00000000025 14400453000 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Sergio	Camila
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3398.dat                                                                                            0000600 0004000 0002000 00000000734 14400453000 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2023-02-28 02:02:19.499633
2	2023-03-03 00:17:54.666124
3	2023-03-03 03:08:02.607209
4	2023-03-03 12:39:50.185552
5	2023-03-03 13:11:19.425506
6	2023-03-03 13:11:19.425506
7	2023-03-03 13:11:19.425506
8	2023-03-03 13:22:10.454317
9	2023-03-03 13:25:38.232268
10	2023-03-03 13:27:03.364308
11	2023-03-03 13:28:05.203689
12	2023-03-03 13:29:51.032077
13	2023-03-03 13:29:51.032077
14	2023-03-03 13:29:51.032077
15	2023-03-03 13:31:33.688462
16	2023-03-03 13:45:38.662219
\.


                                    3400.dat                                                                                            0000600 0004000 0002000 00000000667 14400453000 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Norma@gmail.com	$2a$10$Lo14Mff6ZqzradOSyhW/6uWEBZ0pbwyIgA6iqUkmXxT5I9vhHTA6i	t	f
2	Dranvius12@hotmail.com	$2a$10$Lo14Mff6ZqzradOSyhW/6uWEBZ0pbwyIgA6iqUkmXxT5I9vhHTA6i	t	f
3	1alexis.linares@gmail.com	$2a$10$Lo14Mff6ZqzradOSyhW/6uWEBZ0pbwyIgA6iqUkmXxT5I9vhHTA6i	t	t
4	nappy@hotmail.com	$2a$10$uW494S.QuhRe70IcuuztReC/BCQHQu6DDAZa2s0FSBT4Yd6zhWuy2	t	t
5	asd@hotmail.com	$2a$10$r1amNa1di6SvsE0.bxyXlu6liPhEMM4/UwzRRygCEfcYPM4zAX6zC	t	t
\.


                                                                         restore.sql                                                                                         0000600 0004000 0002000 00000050151 14400453000 0015354 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
    firstname character varying(35),
    lastname character varying(35),
    cc character varying(12),
    numbercelphone character varying(16),
    mail character varying(50),
    statusc boolean,
    relation_staff integer
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
-- Name: envio_p; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.envio_p (
    id_envioproduct smallint NOT NULL,
    relation_client integer
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
-- Name: localization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.localization (
    id_local_clien smallint NOT NULL,
    department character varying(30),
    city character varying(30),
    address character varying(60)
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
    statusp boolean
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
    valor_total character varying(15),
    cliente_coti integer
);


ALTER TABLE public.quotation OWNER TO postgres;

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
-- Name: quotation_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quotation_product (
    id_quo_pro smallint NOT NULL,
    rela_cotiqp integer,
    rela_prodqp integer,
    address character varying(60)
);


ALTER TABLE public.quotation_product OWNER TO postgres;

--
-- Name: quotation_product_id_quo_pro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quotation_product_id_quo_pro_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotation_product_id_quo_pro_seq OWNER TO postgres;

--
-- Name: quotation_product_id_quo_pro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quotation_product_id_quo_pro_seq OWNED BY public.quotation_product.id_quo_pro;


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
    pass character varying(60),
    tipo boolean,
    statusu boolean
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
-- Name: envio_p id_envioproduct; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio_p ALTER COLUMN id_envioproduct SET DEFAULT nextval('public.envio_p_id_envioproduct_seq'::regclass);


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
-- Name: quotation_product id_quo_pro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation_product ALTER COLUMN id_quo_pro SET DEFAULT nextval('public.quotation_product_id_quo_pro_seq'::regclass);


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

COPY public.client (id_client, firstname, lastname, cc, numbercelphone, mail, statusc, relation_staff) FROM stdin;
\.
COPY public.client (id_client, firstname, lastname, cc, numbercelphone, mail, statusc, relation_staff) FROM '$$PATH$$/3403.dat';

--
-- Data for Name: envio_p; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.envio_p (id_envioproduct, relation_client) FROM stdin;
\.
COPY public.envio_p (id_envioproduct, relation_client) FROM '$$PATH$$/3405.dat';

--
-- Data for Name: localization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.localization (id_local_clien, department, city, address) FROM stdin;
\.
COPY public.localization (id_local_clien, department, city, address) FROM '$$PATH$$/3411.dat';

--
-- Data for Name: personaldats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personaldats (id_personalid, firstname, lastname, cc, numbercelphone) FROM stdin;
\.
COPY public.personaldats (id_personalid, firstname, lastname, cc, numbercelphone) FROM '$$PATH$$/3392.dat';

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id_product, nameproduct, price, description, discount, statusp) FROM stdin;
\.
COPY public.product (id_product, nameproduct, price, description, discount, statusp) FROM '$$PATH$$/3394.dat';

--
-- Data for Name: quotation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quotation (id_quotation, valor_total, cliente_coti) FROM stdin;
\.
COPY public.quotation (id_quotation, valor_total, cliente_coti) FROM '$$PATH$$/3407.dat';

--
-- Data for Name: quotation_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quotation_product (id_quo_pro, rela_cotiqp, rela_prodqp, address) FROM stdin;
\.
COPY public.quotation_product (id_quo_pro, rela_cotiqp, rela_prodqp, address) FROM '$$PATH$$/3409.dat';

--
-- Data for Name: sent_quotation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sent_quotation (id_sent_quotation, nombre_usuario, nomb_cli_coti) FROM stdin;
\.
COPY public.sent_quotation (id_sent_quotation, nombre_usuario, nomb_cli_coti) FROM '$$PATH$$/3396.dat';

--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (id_staff, fecha_inicio) FROM stdin;
\.
COPY public.staff (id_staff, fecha_inicio) FROM '$$PATH$$/3398.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_users, email, pass, tipo, statusu) FROM stdin;
\.
COPY public.usuario (id_users, email, pass, tipo, statusu) FROM '$$PATH$$/3400.dat';

--
-- Name: client_id_client_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_client_seq', 1, true);


--
-- Name: envio_p_id_envioproduct_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.envio_p_id_envioproduct_seq', 1, false);


--
-- Name: localization_id_local_clien_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.localization_id_local_clien_seq', 1, true);


--
-- Name: personaldats_id_personalid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personaldats_id_personalid_seq', 5, true);


--
-- Name: product_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_product_seq', 4, true);


--
-- Name: quotation_id_quotation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quotation_id_quotation_seq', 2, true);


--
-- Name: quotation_product_id_quo_pro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quotation_product_id_quo_pro_seq', 5, true);


--
-- Name: sent_quotation_id_sent_quotation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sent_quotation_id_sent_quotation_seq', 1, true);


--
-- Name: staff_id_staff_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staff_id_staff_seq', 16, true);


--
-- Name: usuario_id_users_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_users_seq', 5, true);


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
-- Name: quotation_product quotation_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation_product
    ADD CONSTRAINT quotation_product_pkey PRIMARY KEY (id_quo_pro);


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
-- Name: personaldats uq_cc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personaldats
    ADD CONSTRAINT uq_cc UNIQUE (cc);


--
-- Name: product uq_product; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT uq_product UNIQUE (id_product);


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
-- Name: personaldats personaldats_id_personalid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personaldats
    ADD CONSTRAINT personaldats_id_personalid_fkey FOREIGN KEY (id_personalid) REFERENCES public.usuario(id_users);


--
-- Name: quotation rela_client_coti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT rela_client_coti FOREIGN KEY (cliente_coti) REFERENCES public.client(id_client);


--
-- Name: envio_p rela_envio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio_p
    ADD CONSTRAINT rela_envio FOREIGN KEY (relation_client) REFERENCES public.client(id_client);


--
-- Name: localization rela_local; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localization
    ADD CONSTRAINT rela_local FOREIGN KEY (id_local_clien) REFERENCES public.client(id_client);


--
-- Name: quotation_product rela_product_qp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation_product
    ADD CONSTRAINT rela_product_qp FOREIGN KEY (rela_prodqp) REFERENCES public.product(id_product);


--
-- Name: quotation_product rela_quota_qp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotation_product
    ADD CONSTRAINT rela_quota_qp FOREIGN KEY (rela_cotiqp) REFERENCES public.quotation(id_quotation);


--
-- Name: client rela_staff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT rela_staff FOREIGN KEY (relation_staff) REFERENCES public.staff(id_staff);


--
-- Name: usuario usuario_id_users_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_users_fkey FOREIGN KEY (id_users) REFERENCES public.staff(id_staff);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       