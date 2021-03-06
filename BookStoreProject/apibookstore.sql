PGDMP         7    
            z           apibookstore    13.6    13.6 w    O           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            P           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            R           1262    74062    apibookstore    DATABASE     h   CREATE DATABASE apibookstore WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE apibookstore;
                postgres    false            ?            1259    74233    api_bookstore_author    TABLE     ?   CREATE TABLE public.api_bookstore_author (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    added_by_id integer NOT NULL
);
 (   DROP TABLE public.api_bookstore_author;
       public         heap    postgres    false            ?            1259    74231    api_bookstore_author_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.api_bookstore_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.api_bookstore_author_id_seq;
       public          postgres    false    220            S           0    0    api_bookstore_author_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.api_bookstore_author_id_seq OWNED BY public.api_bookstore_author.id;
          public          postgres    false    219            ?            1259    74241    api_bookstore_book    TABLE       CREATE TABLE public.api_bookstore_book (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    added_by_id integer NOT NULL,
    author_id integer NOT NULL
);
 &   DROP TABLE public.api_bookstore_book;
       public         heap    postgres    false            ?            1259    74239    api_bookstore_book_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.api_bookstore_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.api_bookstore_book_id_seq;
       public          postgres    false    222            T           0    0    api_bookstore_book_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.api_bookstore_book_id_seq OWNED BY public.api_bookstore_book.id;
          public          postgres    false    221            ?            1259    74094 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    74092    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            U           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    74104    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    74102    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            V           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    74086    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    74084    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            W           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    74112 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    74122    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    74120    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            X           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            ?            1259    74110    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            Y           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            ?            1259    74130    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    74128 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            Z           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            ?            1259    74190    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    74188    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            [           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    74076    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    74074    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            \           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    74065    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    74063    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            ]           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    74221    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            p           2604    74236    api_bookstore_author id    DEFAULT     ?   ALTER TABLE ONLY public.api_bookstore_author ALTER COLUMN id SET DEFAULT nextval('public.api_bookstore_author_id_seq'::regclass);
 F   ALTER TABLE public.api_bookstore_author ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            q           2604    74244    api_bookstore_book id    DEFAULT     ~   ALTER TABLE ONLY public.api_bookstore_book ALTER COLUMN id SET DEFAULT nextval('public.api_bookstore_book_id_seq'::regclass);
 D   ALTER TABLE public.api_bookstore_book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            i           2604    74097    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            j           2604    74107    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            h           2604    74089    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            k           2604    74115    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            l           2604    74125    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            m           2604    74133    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            n           2604    74193    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            g           2604    74079    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            f           2604    74068    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            J          0    74233    api_bookstore_author 
   TABLE DATA           S   COPY public.api_bookstore_author (id, name, created_date, added_by_id) FROM stdin;
    public          postgres    false    220   ??       L          0    74241    api_bookstore_book 
   TABLE DATA           j   COPY public.api_bookstore_book (id, title, description, created_date, added_by_id, author_id) FROM stdin;
    public          postgres    false    222   U?       =          0    74094 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   z?       ?          0    74104    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ??       ;          0    74086    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ??       A          0    74112 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   ?       C          0    74122    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   ̢       E          0    74130    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ??       G          0    74190    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ?       9          0    74076    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   @?       7          0    74065    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ??       H          0    74221    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   {?       ^           0    0    api_bookstore_author_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.api_bookstore_author_id_seq', 4, true);
          public          postgres    false    219            _           0    0    api_bookstore_book_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.api_bookstore_book_id_seq', 4, true);
          public          postgres    false    221            `           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            a           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            b           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
          public          postgres    false    204            c           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            d           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    210            e           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            f           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 8, true);
          public          postgres    false    216            g           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
          public          postgres    false    202            h           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public          postgres    false    200            ?           2606    74238 .   api_bookstore_author api_bookstore_author_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.api_bookstore_author
    ADD CONSTRAINT api_bookstore_author_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.api_bookstore_author DROP CONSTRAINT api_bookstore_author_pkey;
       public            postgres    false    220            ?           2606    74246 *   api_bookstore_book api_bookstore_book_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.api_bookstore_book
    ADD CONSTRAINT api_bookstore_book_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.api_bookstore_book DROP CONSTRAINT api_bookstore_book_pkey;
       public            postgres    false    222                       2606    74219    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    74146 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    74109 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    74099    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            z           2606    74137 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            |           2606    74091 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    74127 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            ?           2606    74161 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            ?           2606    74117    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            ?           2606    74135 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            ?           2606    74175 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            ?           2606    74213     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            ?           2606    74199 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            u           2606    74083 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            w           2606    74081 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            s           2606    74073 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    74228 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            ?           1259    74252 )   api_bookstore_author_added_by_id_517e686c    INDEX     q   CREATE INDEX api_bookstore_author_added_by_id_517e686c ON public.api_bookstore_author USING btree (added_by_id);
 =   DROP INDEX public.api_bookstore_author_added_by_id_517e686c;
       public            postgres    false    220            ?           1259    74263 '   api_bookstore_book_added_by_id_5f74ec4c    INDEX     m   CREATE INDEX api_bookstore_book_added_by_id_5f74ec4c ON public.api_bookstore_book USING btree (added_by_id);
 ;   DROP INDEX public.api_bookstore_book_added_by_id_5f74ec4c;
       public            postgres    false    222            ?           1259    74264 %   api_bookstore_book_author_id_6bdee1ff    INDEX     i   CREATE INDEX api_bookstore_book_author_id_6bdee1ff ON public.api_bookstore_book USING btree (author_id);
 9   DROP INDEX public.api_bookstore_book_author_id_6bdee1ff;
       public            postgres    false    222            }           1259    74220    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    74157 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    74158 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            x           1259    74143 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    74173 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            ?           1259    74172 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            ?           1259    74187 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            ?           1259    74186 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            ?           1259    74214     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            ?           1259    74210 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            ?           1259    74211 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            ?           1259    74230 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            ?           1259    74229 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            ?           2606    74247 N   api_bookstore_author api_bookstore_author_added_by_id_517e686c_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.api_bookstore_author
    ADD CONSTRAINT api_bookstore_author_added_by_id_517e686c_fk_auth_user_id FOREIGN KEY (added_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.api_bookstore_author DROP CONSTRAINT api_bookstore_author_added_by_id_517e686c_fk_auth_user_id;
       public          postgres    false    2953    211    220            ?           2606    74253 J   api_bookstore_book api_bookstore_book_added_by_id_5f74ec4c_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.api_bookstore_book
    ADD CONSTRAINT api_bookstore_book_added_by_id_5f74ec4c_fk_auth_user_id FOREIGN KEY (added_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.api_bookstore_book DROP CONSTRAINT api_bookstore_book_added_by_id_5f74ec4c_fk_auth_user_id;
       public          postgres    false    211    2953    222            ?           2606    74258 E   api_bookstore_book api_bookstore_book_author_id_6bdee1ff_fk_api_books    FK CONSTRAINT     ?   ALTER TABLE ONLY public.api_bookstore_book
    ADD CONSTRAINT api_bookstore_book_author_id_6bdee1ff_fk_api_books FOREIGN KEY (author_id) REFERENCES public.api_bookstore_author(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.api_bookstore_book DROP CONSTRAINT api_bookstore_book_author_id_6bdee1ff_fk_api_books;
       public          postgres    false    220    222    2979            ?           2606    74152 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    209    2940            ?           2606    74147 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    209    2945            ?           2606    74138 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2935    205    203            ?           2606    74167 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    213    2945    207            ?           2606    74162 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    2953    211            ?           2606    74181 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    2940    205            ?           2606    74176 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    2953    211            ?           2606    74200 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    203    2935            ?           2606    74205 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2953    211    217            J   M   x?3??I,-JTpO??IM??4202?50?54P02?2??22?60?4?2?????L̓+1?T00 ?[A???qqq )!?      L     x?e?KN?0@??)f???|?EHE?;6?x?r<e#?m8 ?r1???????k?R`?y??ދyR?Hv?=?x?^?K;|????i????fj?Ɩ???Ŭ*????j???Jk*Ss?H?(c???6??U?)??Is!???N)?`?? ? Y?	t?Wˍ???W?{?-?V????5ʋ*eZ?w????ؤZ	??N"t?2Nd?0	???'j2Yf4?Tc??Q?2?L?k?͆c??>????k?1K???]/?r^??U??      =      x?????? ? ?      ?      x?????? ? ?      ;   L  x?]?Kn?0D??)|?"??Y?
7??e??"?oL?D?;?|?<@??{7??Z<­??2=?3???5?hKB.?n?yE???W??????#????Sض`???F????܇????[K9?N???S,۲?"?Qp?ly??:???m?Aʥ;??8??? )Y%d?s???O?H?Ӻ????8?t ?@??8St<69????k???9?V?ƺV??`)?,?v<?$_XsG??b]??}?՚?1?R??xfL??1?eLt?!??7?[?{?LCBq???x&?? ??A&A??!?p??B?6-ylO[?.?
??&@~D?q?l:~?Yk????      A   ?   x?=??
?@F??S?p'??WM????B??-2&tB??sQ??w????3o?????paQ#?8?^QX???????-???N?NyX??"n??/S&w??e?.Y????,nӳ?"?8?LM? ??z.g?`??4j뼫:???f?u%?_???F?]&06??k?o4_      C      x?????? ? ?      E      x?????? ? ?      G   *  x?}һn? ???Z???V???ԭ?@MP	TN<Ey?>B_??V:8?	???\`(???m0?*?%a?W5???z?M??]i?u??x??ϑD???0?`Hj???F???>??r?]????û`7???|1kW?$?&9' ??j4o?O??ߞ(J??
Jӆ(N?? =ܦu?5[??>?tƫ?=!??~????;?[?Rr_?Tir_TP?DV8zv??y?*?v՟z?GN$A5??R?%??????ۑ
oS׹3??jL?$??@^?.m??m??m}??b?C??(?_??=      9   n   x?]?K
?0?z?	???0???"1?-#ɋܾ?C?d7o`^O??b??L?](T????h%cXͤR???Ɗ?????R???d?j? 
%?"/sQn??????p? | ^J5}      7   ?  x????n? ????????f0}??FlB]??????/P?D??ɍo??8s?ش9?)?)??lBC?h'?F{&?3?~1???W?^?R@?'???K|?? A?BV?F?F;= TeI{?0\???3z3???~??t?a(`!?~E$?c?n·A?x|w???DI???a???? ?	Nz4ۤ.?xFɚC=D?q6~?!dGY?????L}zk%WTWQ|E-!=̨?p??(?R??????Ŏ??N:
??~)?q?t?9y?&[???%!
?H??[?????1??a?d?\?S?V>?`O::J??{?q4!?~?wI?d]????6ӹ??JW?? ?#??H??%.(JVT??2?????A?P\攐?ٻ???B??Ó??;?n3e?S?Y??X\\X]?z???ly?΋,??l??sC???WY?(??\???p8|??h?      H   I  x???Ɏ?@ ??s?}?h?Z?n?????jK&!?Ȏ???ؗN?|?/??x?Zʂ;N?[ŋ??s?)???????$ԇs?X??M;X?3?ɬ?/??d?(V?#=k'ڜ?Prk???H,,?^?b??n??5??fQ??????_u??c?????C??,q!sY<?f?2??d?f?59b?,???s?7???V:h??^7j?:ӹ1?U???ۨz????n?E}?.<I+WT?O?????x??????? o@8x?;*?*?Y1D ??|??I?[?TM_Wս??1?????DL???s[AڅdG?v????+??}?_.??r?~?????B?B4 ?~Q???N?/Is?F?a)m???&?G?Z!(????,??;???,˕??ND???@r?????aA`???Q??'/?p??ާ???V?V??:∼"Q????"?K???۵]}?Ac???????g֢??q????'???'@P??QQqV?P?c?WA?8H??UCY???Ph??????f=??b??L???ԙ??@?]$?V?????WHz
	DE҄`Y?ғ??d4}2?b     