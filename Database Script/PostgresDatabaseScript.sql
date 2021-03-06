PGDMP         &            
    x            postgres    13.0    13.0 u    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Z           1262    13442    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            [           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3162                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            \           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    49707 
   arts_event    TABLE     J  CREATE TABLE public.arts_event (
    "Event_ID" text NOT NULL,
    "Name" text,
    "Organization" text,
    "Location" text,
    "Street Address" text,
    "Price_Range" text,
    "Kids" bigint,
    "High School Students" bigint,
    "Other Young Artists" bigint,
    "College Students" bigint,
    "Young Adults" bigint,
    "Single Young Adults " bigint,
    "Young Couples" bigint,
    "Single Adults" bigint,
    "Couples" bigint,
    "Couples with Kids" bigint,
    "Single Parents" bigint,
    "Senior Couples" bigint,
    "Senior Citizens" bigint,
    "Team Building" bigint,
    "Graduation" bigint,
    "Professional Networking" bigint,
    "Social Networking" bigint,
    "New to Dallas" bigint,
    "Field Trip" bigint,
    "Date Night" bigint,
    "Birthday" bigint,
    "Anniversary" bigint,
    "Family Reunion" bigint,
    "Wedding Related Event" bigint,
    "Entertainment" bigint,
    "Socialization" bigint,
    "Fun" bigint,
    "Time Pass" bigint,
    "City Exposure" bigint,
    "Family Experience" bigint,
    "Fundraising" bigint,
    "Art Exposure" bigint,
    "Learning" bigint,
    "Inspiration" bigint,
    "Cultural Immersion" bigint,
    "Awareness" bigint,
    "Opera" bigint,
    "Orchestra_Strings" bigint,
    "Vocal" bigint,
    "Musical" bigint,
    "Classical" bigint,
    "Recital" bigint,
    "Lectures" bigint,
    "Broadway" bigint,
    "Poetry" bigint,
    "Rock and Roll" bigint,
    "Blues" bigint,
    "Pop" bigint,
    "Choir" bigint,
    "Concert Band" bigint,
    "Concert" bigint,
    "Music Festival" bigint,
    "Chamber Music" bigint,
    "Symphony" bigint,
    "Jazz" bigint,
    "Comedy" bigint,
    "Literature" bigint,
    "History Museum" bigint,
    "Historic SItes" bigint,
    "Ancient Artifact Viewing" bigint,
    "Story Telling" bigint,
    "Art Museum" bigint,
    "Sculpture Center" bigint,
    "Art Gallery" bigint,
    "Crafts" bigint,
    "Limited Time Exhibit" bigint,
    "Permanent Exhibit" bigint,
    "Multiple Artists" bigint,
    "Featured Solo" bigint,
    "Workshop" bigint,
    "Interactive" bigint,
    "Award Winning " bigint,
    "Labor Day" bigint,
    "Memorial Day Weekend" bigint,
    "July Fourth Weekend" bigint,
    "Mother's Day" bigint,
    "Easter Weekend" bigint,
    "Spring Break" bigint,
    "Easter" bigint,
    "Father's Day" bigint,
    "Mother's Day Weekend" bigint,
    "Fall Break" bigint,
    "Race Signification Time Period" bigint,
    "Modern" bigint,
    "Cultural" bigint,
    "Dance" bigint,
    "Contemporary" bigint,
    "Abstract" bigint,
    "Theater" bigint,
    "Arnoretums" bigint,
    "Aquariums" bigint,
    "Technology" bigint,
    "Science Museum" bigint,
    "Planetariums" bigint,
    "Film Screening" bigint,
    "Galleries" bigint,
    "Asian" bigint,
    "Indian" bigint,
    "Russian" bigint,
    "European_Dutch" bigint,
    "European" bigint,
    "Italian" bigint,
    "English" bigint,
    "German" bigint,
    "France" bigint,
    "African" bigint,
    "Middle Eastern" bigint,
    "American" bigint,
    "Latino" bigint,
    "Hispanic" bigint,
    "Native American" bigint,
    "African American" bigint,
    "Women" bigint,
    "Book / Other Entertainment Adapted" bigint,
    "Jewish" bigint,
    "Politics" bigint,
    "Texas" bigint,
    "Black" bigint,
    "Struggle" bigint,
    "Local Talent" bigint,
    "Babies" bigint,
    "Nature" bigint,
    "Ancient History" bigint,
    "Kids.1" bigint,
    "Handicap" bigint,
    "Biblical" bigint,
    "Other Entertainment Adapted" bigint,
    "Multicultural" bigint,
    "LGBTQ" bigint,
    "Black.1" bigint,
    "Islamic" bigint,
    "Space" bigint,
    "Politics.1" bigint
);
    DROP TABLE public.arts_event;
       public         heap    postgres    false            �            1259    49731    arts_new_user    TABLE     �   CREATE TABLE public.arts_new_user (
    "New_User_ID" bigint NOT NULL,
    "Genre 1" text,
    "Genre 2" text,
    "Genre 3" text
);
 !   DROP TABLE public.arts_new_user;
       public         heap    postgres    false            �            1259    24743 	   arts_user    TABLE     f   CREATE TABLE public.arts_user (
    "USER_ID" text NOT NULL,
    "Email" text,
    "Password" text
);
    DROP TABLE public.arts_user;
       public         heap    postgres    false            �            1259    49681    arts_user_interaction    TABLE     �   CREATE TABLE public.arts_user_interaction (
    "Index" bigint NOT NULL,
    "User_ID" text,
    "Event_ID" text,
    "User_Rating_Non_Numeric" text,
    "User Rating" bigint,
    "Event Genre" text,
    "Event Subgenre" text
);
 )   DROP TABLE public.arts_user_interaction;
       public         heap    postgres    false            �            1259    33262 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    33260    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            ]           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    33272    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    33270    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            ^           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    33254    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    33252    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            _           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    33280 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    33290    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    33288    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            `           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    33278    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            a           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    33298    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    33296 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            b           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    33358    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    33356    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            c           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    33244    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    33242    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            d           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    33233    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    33231    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            e           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    33389    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            r           2604    33265    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            s           2604    33275    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            q           2604    33257    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            t           2604    33283    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            u           2604    33293    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            v           2604    33301    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            w           2604    33361    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            p           2604    33247    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            o           2604    33236    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            S          0    49707 
   arts_event 
   TABLE DATA           U  COPY public.arts_event ("Event_ID", "Name", "Organization", "Location", "Street Address", "Price_Range", "Kids", "High School Students", "Other Young Artists", "College Students", "Young Adults", "Single Young Adults ", "Young Couples", "Single Adults", "Couples", "Couples with Kids", "Single Parents", "Senior Couples", "Senior Citizens", "Team Building", "Graduation", "Professional Networking", "Social Networking", "New to Dallas", "Field Trip", "Date Night", "Birthday", "Anniversary", "Family Reunion", "Wedding Related Event", "Entertainment", "Socialization", "Fun", "Time Pass", "City Exposure", "Family Experience", "Fundraising", "Art Exposure", "Learning", "Inspiration", "Cultural Immersion", "Awareness", "Opera", "Orchestra_Strings", "Vocal", "Musical", "Classical", "Recital", "Lectures", "Broadway", "Poetry", "Rock and Roll", "Blues", "Pop", "Choir", "Concert Band", "Concert", "Music Festival", "Chamber Music", "Symphony", "Jazz", "Comedy", "Literature", "History Museum", "Historic SItes", "Ancient Artifact Viewing", "Story Telling", "Art Museum", "Sculpture Center", "Art Gallery", "Crafts", "Limited Time Exhibit", "Permanent Exhibit", "Multiple Artists", "Featured Solo", "Workshop", "Interactive", "Award Winning ", "Labor Day", "Memorial Day Weekend", "July Fourth Weekend", "Mother's Day", "Easter Weekend", "Spring Break", "Easter", "Father's Day", "Mother's Day Weekend", "Fall Break", "Race Signification Time Period", "Modern", "Cultural", "Dance", "Contemporary", "Abstract", "Theater", "Arnoretums", "Aquariums", "Technology", "Science Museum", "Planetariums", "Film Screening", "Galleries", "Asian", "Indian", "Russian", "European_Dutch", "European", "Italian", "English", "German", "France", "African", "Middle Eastern", "American", "Latino", "Hispanic", "Native American", "African American", "Women", "Book / Other Entertainment Adapted", "Jewish", "Politics", "Texas", "Black", "Struggle", "Local Talent", "Babies", "Nature", "Ancient History", "Kids.1", "Handicap", "Biblical", "Other Entertainment Adapted", "Multicultural", "LGBTQ", "Black.1", "Islamic", "Space", "Politics.1") FROM stdin;
    public          postgres    false    222   ��       T          0    49731    arts_new_user 
   TABLE DATA           W   COPY public.arts_new_user ("New_User_ID", "Genre 1", "Genre 2", "Genre 3") FROM stdin;
    public          postgres    false    223   !�       >          0    24743 	   arts_user 
   TABLE DATA           C   COPY public.arts_user ("USER_ID", "Email", "Password") FROM stdin;
    public          postgres    false    201   ��       R          0    49681    arts_user_interaction 
   TABLE DATA           �   COPY public.arts_user_interaction ("Index", "User_ID", "Event_ID", "User_Rating_Non_Numeric", "User Rating", "Event Genre", "Event Subgenre") FROM stdin;
    public          postgres    false    221         F          0    33262 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   	�      H          0    33272    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   &�      D          0    33254    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   C�      J          0    33280 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   `�      L          0    33290    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   s�      N          0    33298    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��      P          0    33358    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ��      B          0    33244    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ��      @          0    33233    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   1�      Q          0    33389    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   ��      f           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            g           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            h           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);
          public          postgres    false    206            i           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            j           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    212            k           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            l           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    218            m           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);
          public          postgres    false    204            n           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    202            �           2606    49715    arts_event arts_event_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.arts_event
    ADD CONSTRAINT arts_event_pkey PRIMARY KEY ("Event_ID");
 D   ALTER TABLE ONLY public.arts_event DROP CONSTRAINT arts_event_pkey;
       public            postgres    false    222            �           2606    49739     arts_new_user arts_new_user_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.arts_new_user
    ADD CONSTRAINT arts_new_user_pkey PRIMARY KEY ("New_User_ID");
 J   ALTER TABLE ONLY public.arts_new_user DROP CONSTRAINT arts_new_user_pkey;
       public            postgres    false    223            �           2606    49718 0   arts_user_interaction arts_user_interaction_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.arts_user_interaction
    ADD CONSTRAINT arts_user_interaction_pkey PRIMARY KEY ("Index");
 Z   ALTER TABLE ONLY public.arts_user_interaction DROP CONSTRAINT arts_user_interaction_pkey;
       public            postgres    false    221            z           2606    24762    arts_user arts_user_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.arts_user
    ADD CONSTRAINT arts_user_pkey PRIMARY KEY ("USER_ID");
 B   ALTER TABLE ONLY public.arts_user DROP CONSTRAINT arts_user_pkey;
       public            postgres    false    201            �           2606    33387    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �           2606    33314 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �           2606    33277 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �           2606    33267    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �           2606    33305 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �           2606    33259 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �           2606    33295 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �           2606    33329 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �           2606    33285    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            �           2606    33303 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �           2606    33343 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �           2606    33381     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �           2606    33367 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            ~           2606    33251 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �           2606    33249 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            |           2606    33241 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    33396 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            �           1259    33388    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �           1259    33325 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �           1259    33326 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �           1259    33311 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �           1259    33341 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            �           1259    33340 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �           1259    33355 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �           1259    33354 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �           1259    33382     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �           1259    33378 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            �           1259    33379 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            �           1259    33398 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            �           1259    33397 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            �           1259    49687    ix_arts_user_interaction_index    INDEX     c   CREATE INDEX ix_arts_user_interaction_index ON public.arts_user_interaction USING btree ("Index");
 2   DROP INDEX public.ix_arts_user_interaction_index;
       public            postgres    false    221            �           2606    49724 9   arts_user_interaction arts_user_interaction_Event_ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.arts_user_interaction
    ADD CONSTRAINT "arts_user_interaction_Event_ID_fkey" FOREIGN KEY ("Event_ID") REFERENCES public.arts_event("Event_ID") NOT VALID;
 e   ALTER TABLE ONLY public.arts_user_interaction DROP CONSTRAINT "arts_user_interaction_Event_ID_fkey";
       public          postgres    false    2990    222    221            �           2606    49719 8   arts_user_interaction arts_user_interaction_User_ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.arts_user_interaction
    ADD CONSTRAINT "arts_user_interaction_User_ID_fkey" FOREIGN KEY ("User_ID") REFERENCES public.arts_user("USER_ID") NOT VALID;
 d   ALTER TABLE ONLY public.arts_user_interaction DROP CONSTRAINT "arts_user_interaction_User_ID_fkey";
       public          postgres    false    221    2938    201            �           2606    33320 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    2949    211            �           2606    33315 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    2954    211            �           2606    33306 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2944    205            �           2606    33335 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2954    215    209            �           2606    33330 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2962    215    213            �           2606    33349 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2949    217    207            �           2606    33344 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    2962    213            �           2606    33368 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2944    219            �           2606    33373 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    213    2962            S      x��}�rɒ�:���m��5�4�~h3ÇXR�(qDV���7���d' �X֋k����lf1�ٌ�'��ԗ�G$�H���J+	@F& ?���=<<��K�sLPK�s!.���RN�O�Uu]�*ezw���O�}�����6����[f���5��|��ۼ��Q�o�K,��[S�*�_�_��q/��%'g��!C�q����an�aD�`�wq#"R�*�P��n��1B����)��P��:?��^0��G|.�oﮫ�������&;��~U�o_���>�=x�8�$��Pg�"��u�ڴ��w8�~ �\<u<|�F�������gQ��E��;�l����w� L�U�aQ�ܛ�=�;K�u���꺺�>��>;l����j�Lt�bOG'E��J	J����$̃".Y�K��pCP f�/�2;�vAĦ��u������坽�nCc�"`�s�U��O��Э�n���4[�����,�n���kx5�Y� ��� �|��_��т2�5�Z����1C�Ԏ���JЇ� A��9�P�MQ�G_�w�\�ʶ)J�_���`u�h�QD+a�│�9��s�"�<;���݉)�0��`T}ˏ��Wu1�]�OL��6c}X�j+~cGS%�f�Ոii�vQb������:�B�����to�P�����'�m��:|S�������������[S}pk�)}~2��uXw8�X矪A�z��C_愣��gU��ʗo��x<z��k_��&!�^����G3e1F�QDQĒʣr�� ��������.M����U`����� Y���<.�f�Эt���VZ�#Q�C2
k���v�J���v���c��Cñ�$��q�h�����;�8b1�'<�����I�Bg�ߜ]��o޾�p�:w{[@���ߋ��ɛ��d�N�^C�@��[�����6;.z��]B����~�ĂS��2���&圅R������NW�}`�(�\P�c^cL�PH�h����$$����*��z���Ҳ��}DA��y�0�hn�p`�8<�}5�3-������#Ћ���QD)�R
c��X�ُ���;����<�i�f�m"�5e�ŷ,�wG(*4G��(��D#9� �d�8�`��IQ�}����`�F�D|j nI���z]آ�[�6\�h�e:�H��	 �O@>��f�i�6���Dd�W�+�6����2zpl��t�[]Hy`��H�BU	���xл�/���,�X����������ѯ�2�hF�����
x�WS����(��9��z����#6a2<`��[�R
�WS��0�;�(n~U}+��W��7�}���>e�.�z�v��"�Eُ&O5+�i	O���q����(�����H0�"	HKo-��[�(a�
fYv2�{�5^Bݯ�O�9�r{�o��g�.A7�o���y�f g=d[>x֜���7/���ņ�w$AB���yDIJ�H%�w% �jSH�ÿ�.�&ٸ a����2E0�_
w��w��M;��~����!���7�fO M��=������D���,�Z�;I�R��2�\U��u~�_��Υ��L��&^˿���^�ë�×�}(�T�Har�󣸳o������Bd@Cc2P��'��Ϋ�L���^����'�>$���_�����1��W9��I�k�|l7��Iso:��{vXTܥ��'��xXPĄsʓ��pa�񲰡[� kN���8I0IeL!�0�ya�dN���>;3������W$���<����4x �0�s]ƪ�Qo�_�>�RTݢ||����C������h� .�<��Bi)�ST�$����)��MqS}���(-;�EiQ�����1ܐ(X`>8�3��Q9����Ǔ�����k�'}:4P�B�$Oit1P�G}��o՘N���2C�pP#�t�qd�۵zQ}����kℏ���\V"��E�z�DI�~Q����qº8����N?&�	~?z�*��99�XIÉ3F�DA�X��w�)����ݭ�����T7�U�P9��X���}����������oC�$`Zb���jte:�=m0�)��Y��1���#�E2�B
jwLc8֢������(��N���pFB��))�5gvu�֙J�y*4�á�˫桤I*,�$��˩M���8Ǹ���E7�j�7)�~���*٭
�Ҏ�W�e)�IaL:�m �ur{�Wy�GD2�^;�pD�HwH���8��� I|k<p�:����aΊ�tC�d����n��|�ZN�`�O��'��?�o�Y����h�&*F����IɌ�<�ɤ������o��-���0|���ѡ-g\�3.�6;��n����#wrǎFb��(Pf�*��ea��٥Z��}~yW��ŗk`
ՠދ;Z�4��]X�q��£#��TIg��Zc@}|��{�%��~)z���/I�E�����Ջ����E*#�z`ϋ_��u���N�Xɦ�����T�/��/1�[Lw�NNv�4�/e�tċ��)�,��iԇ��6�����������q
�\�����tm����ќY�%��6��v��9�LQ-^�0Q+k��)9SBx묏4K����#�2
�{`���|wr�SK������֞�zD��-rr@-�B2k(� [aE��[�P���A��p�� ��w%($�� �^�@��)����]7�|wr~�n#���'�W1_�!:�__�`B����T�l�dL�GZ��-ۀ7�����Q<��`d��)È�p�J0�?�H}e�7��iz�j��;�Ø9Ի���+��0w�<0<(0� ��{%�a@aP��m�����f����ui�R�V����{���<ݳ�� n&�e�c_nk�};���b�yB�����I���S)j�?9a�2��+!����5�N�r�I�߭OL�m8f�Z��8���[ᬣ�`��ssҼ	����7���M��6.tC��z���%㒚ԗI]Y�=���E%�#!\	�Y�i��EmR���1�G~a�����~��t,�	F�Eg#�6� ��RE�f��`ޤĈ�Aն�Cd��oʆ��`j�ގ���n�7�t��LM)Vˉ];��U��w�}���9�w���S`�q���� �S�,���\�]����4�y�O����C�C]�X,��� �yN�P�l��<d�&g B+��1b�@�<Dx�Ӽb�{Ɋ��K����N	�q�>��VeZ�>�^���h�WmӪqqVw�' ����*sFI��s10n�U\2i� v�J��u*����z��Y�ue�7sv��I����3��)s~�k�k�V�]gi��Q�r���V�;
;,-�J���"DU( O�@^����ު*�{,�9�.�����C�QR��-�T�7E��j�g��kFN��n��p�޾��X����Q0M���+#�"h��Ǻ�R�i�z���^�궩�8���>H���.B]����ӬmJ����ta�!�4.��U�z�k��Z�6\ֱl۠�zm�)K�T�bj=�C��$��L	����B�.����O��鳸��؟a[��2gL� ƈ1��МG������zP��T���uP$�Ѹɳ{�������<:J�V�X%�p�P�6x�Q~U6Ux���Ԕ�\��.p�O��7�e'�g�)�pL����zoJgz����p-��M�϶��U��Dz`�;��`D.���$@�p�D����@�
㮋"0r���4]��5D�������.��J��6�f�@�^��Z�5KB)�^ ���m��h�ǚ��<� ��{_�!�T�`��@��N��R���4��>��5�Y*�}W�W�OE�]�I���#�K��Y���Oi�vH���| @�ȩ��}�����|*^�
���i�܏���I�>�$~"�B��P�M�4���,:`p�]�e���mFk項�v@�T��h��� ����1�h=��d��e|��eI�I������oT��p���4Ø�g�o#�    Cs�I\#RV�-u"j�֋C�!���H�˻`n� �f	B�����gG��I,��i�P�-��;V���8
ϩ6��D*�)���Z?��'ul x�|\�v�/�u���L����ډ!�E&�t��·z�v��6c�����G�`g<��蝋	�td�b'�r��p(<8��2��X�oC�6��nSq8���d��Tc�U�J~��:��@&!�T�5r[�"v����?p������e�(�[%�4y���eN�	x8�$B�X҈B [П�2�����zP�����������-��i���Ⱥ�,G�;8:�	K<s(8Ex�Go,gVZ�X����Ԝ/Ykp��VEZ�8Zp0��}
�p��Koz)��S�R)�Q��i�V�:�@m{�,#:�9��:po�����������F�����M�YShV@ �v���U�n׶o���|�̆��I{�n��h��(�!\�R5-�V�hZD=�.4uIE�_���b/o�"���6�Ϛ�9��Uı�X'��&�- !|��(�Rk6��=��H2 �A]�}S�V���ѷ�K�sܭz���*3K���ܴ�l*���p7(.�v%&��L]T�iOaJ#�N��{\�}�5��v�`E�3��b��D�����pv�F\����*R�0�8j��1M^̭m��MS�����E"	̙QhÂ�B�8*��y�>��,�^X�r�X0lw���/՜��'i�qzVW՚KG�MH|>���qQ�o��7=�STڎ�R3��@�y-G�PDƼO���z�^��Mr(���NGiYY�x�ާ������2�:MH&�kb���2U?��n���/z��/L}�V�}
�IΣ3�<�cC�ԍ�!utq���E>�����=�?�t.h}21;rJ�C�;���R��(f8"�4�:qn�ZdԷ�l�yMM�>����?V�&@
�������*���L����W���ܧܖHq�V�}'B��0��@ːrT�f1BY��	ٙqI��~o��lY��w�������u�J���A�ȷö�@�z�ʿ�C�NHdY�s�iL�S�9zC�vW���vPC�P�9�2��ZN�����ث��sr)�m������r�{�,��	��O�6�(�ZQ�7�I��.�u��(s�T�	�k��dv,�~�w<�OOg���E��YD��ڞ��H��8����Q�,��@h����`Z/�[�bq[�~�UM��D
��_�T^���Ϻ��"߷��,e�xlp��+:s��Śk�|$.��^e�����]U_B�F�:���>�z�-��Di�JSW��z�GP5��b��8`>@�M����ݶf�@�2H����D�,HI���B8"�"�U�t��b�S�'x�7����MY�;��x��;�7nΙN��xژ!z���!u������O�.����ō]sS����'����zY����@ݒ�E*���|��Ӭmخb���Vg�F���ZK�Qod4́��>��Z�a0�U1*�85KEk�
8��׻�alZvp0W!/�ζ�m�^~���/�8�'

����(�
�h����	��9��u9^"��$G;v���\ֻ�|Z4��x��vNi,�e�b�,��;΀.H��^~�/�v���)L���s�D4�j��̷�������V��(�W�"ő	�E�FŅ�Z�0d�gi��Dя�RVr�["�CK��������nҌ�F:ǽ~�U��a��̦���g��noƱ�u,�`0#�xipN:�RQ�}z��*Uߡ��*���RפԭnO�,gmc��^:��qkF���Ut�/?�"s�`���$���XS�ݧ��u��� i��A�C]6���锧 i�yJ����:�y�9�����9�4^�Jo{\w�jG`��A��F�����#\�@��A鮇ɋ�jp�쥵���������$_e��y�/��v�~V^���@4l5���?i9��VHj���=��������-�NPl��zf�P�~� �����P����FNSk;A�ug�B�f\�M�	�w>M�7��kuxq���"*�#V�E�1qV�@�1��fW����*�������j�p5��o���cZx��6����O�V��;(�O�@MLU7�q���8��@�M!͡�^~,�C���qL�(�'c�{���Y�1G_Y_�O��{06�c�sb��d��!&��\GAB���}.�i�a8<����W�=}<9|�A���W���`DSG!����l5H��Sϡ�E����=2�ע�#p1�/�t�7��o͵h��2��W���6�Z�/Y��xzĶ��ٛU�06��]�@lR*��� �S"���2��N�W�E���u��*��fwf>b'��C厐�ՊL�<fϯw���*�[�>}sD����(j�6�ӥF�F�v_H�4Rl��K��/ݠ{װ·<Z��Zv~�Z�etS魖��DQ6��4�E˘s*R�m �p4��D�HհIM�&ņ۟O�o�n�̠�Y�լ�x�nX/���Udƌ%�7�xزz�m��<~nZ��8�Y��E�k먱��e�Iј�
Bw�������ip��E��ݔ�}�ZL��<��E��������jc���p�2�gB�r	�[�e�xa���j���V� ��O��f��[i�J�yvJ��|h�?�'K2@������ ������z�^��䟁�����I��R��:����9���8�	@��ֶ�!"�0�NIe8�Z;&��BK0�ޙ�8�����N>�U>��o��:�J;?�G��P�d�bi�'�A�ёxHD�pv~�
_	R=O�5�y��@0������,��4'�>�K���E�#C�^+I�U<:�PH�dD-�\�T�Q65ģ�Ҏ��'[��_�{>Z��{�#C�N����;�zS��r�eL������@��Ԏռ�2�Ex�:2���#*���}|'�,�Dw8�wn�?� ,����Vh���S�V?Kͳ�O�:�B��n��q�ӻ,�/��������J �J�����G�x���`@`eYpise�nz8#�w��m������"��["���'l�����#�!����� �"���h��kW��W��n/��D�k���݂�S�����U�Az$��s������M�Ҁ`��w:w:��ÿs�{�ؕ�7��(1�f�^H	2$�IM#�OL���>?�F]����@�3�.S���}��/�檲��N��2%XI�0�����ssk��,��u�a��:��̥VJ f�x퀓�&[%�������*�5����Y���WҖ\OI�6���uO�̲��sa�I��v�`�(i�G��2hg���=�$��k:���n��O����2�a�=�c��g��ø���m\2��(`�ރ��Z�A���n4i��R��C��f+���c�l{���M���������5�҉Ɉ�a�	���pn9
Z1��ʎ�)^6õ1I�Eള�I:3_���GA����vJ��1��`�!c��S���L�q�ø�.z�0M�Ԓ�T�E]!�����c�וO�U{�g���ܙ�ڤem�|���!ъ�J{�Lʶ�R�R�6�s0�Ky]�V�`T'�pQ3�#u�c*��>*��r8��п6{����[�>K��ѯ��Y���fz�i14�\�0�*
�S#��MY|�5�/��z�`n�U���^N��Ei�U�B�a���N�Sν:��COq+�1`�0�oTyVto_�?﫴��s�N�f�&��.�NC��zwy ��2*���B{|\1V�R���� ��h_���a�tڱ ���s*�����i�6���(�"�m�E�c��"(cZ�$v�F ��H���ސrZI�c���,z���7"Ǌ���;����Ö�n�{n|3�|~5϶[�~"�e�f��,�[G3%-Q���#�*
�ͧ��
΢�}v����S��?����.�*���t�|����M��������#��h��C,s�re��<�h��k�"�N�2���C�7m�RK����[��IA��<h�����(��u+{��C|�Q;�0�60k�L o$��#���AeS�b F  ��-��C����n���B`���\�*n.�/�s�SQ���a:Kl���gb��Gx�w�v���LCe4��li�E³�M�?�&���0(|��U���|J�_8ښ�5pZ�b�kO�ܢ�����'@Í�Y�E��)�� ,l<�}��:���ÖU/�UZ0qU��K^����T��C(����ʍ
�Q6O�����*�x��S爡�3.$M	x唐�j�Cte/��.���w��f�{���m�ϛ%)�
�-:�J{�oZxm�K�"���O@4�R3� ��Q!�i��ES=��_N{��G��M���+��Ѭ\����]�}��߶��h
�5�Hc��K��K�r���[T�埪�P5���A�xҝ�Щ��"5�)-���swI����S�Au�32R: i��h�E��n5�����y��_�~a�2�4M����O�.S�8��<��֖�@<1�w�q���~W����^�g�߭/�m���EY�p^�4�Hm�*P*�C��f?���O�nvz����چ����<��V/?Җ��0H@V�EH�(bDyl����.�:�Q���ѽ��V�[%E�m�z���~G��઱1����7�0q�"A�T8�@���6wƿ>�������T�{[��$���i�l]�AS�����O����*�irL�: �(��>���,w��#+�Y�E�p�贤��<��ck�s!����݀[�T�P�*t���Y�y�I!ϻ�����`��{h�'	�%���ώ�g��ǞMW���dv�Jϧ��a]U[���Z�q��wl$� $����<=��7��9�K���W�4l���N�&1�_i���Gj�DJ�4�@�;\=�QMsſ2 ����\�A�٪ZhS3|�:�ɨ���B�� @���07r9���m���J����*������ro
ס��WA(*8%�CT&<V�zʩ��Xqu҉��, @���m��4�~���I��pl�w���1J@��a�����֎+���a��[���.@0��({w��÷MC�F���4��|e[L 瑑�f��W�@QGQ�Z���C��"5�4�엢�����A�k��tU�|~v�"��~(��N*���4zL�im�i�_����Y�޿oz
4Qܰ��ɬ��n2;ڍ��(��f�X���nҬO���V�k�V-Jdm��j�>��z3�ע��T,�C�l�,��F�}jel2b��k�Vw	ߑz�cc���27Z�r1t,��Q������?�O荶7x[�C7�'�Ot��~��̏�T��PJ�MVe��^֏����|�����y��ya܍��4%�i������Ͱy���w��\a�DR㴻��,��&w<�4{؟������{�s��`^ͩ<Is<�n+��-��NLv�A����Emxx��c����(��!�@�w<��X�Pu������\�6�َN@BA��Z� �#u��h�w!k�"���]�ǩ�M7�� �[]�xV�=7�<�պL��籺_N	e��$�QD7�X�-�f�`�if�,n�v�:\��8Z��i>~��_	�~��t�M��      T   �  x�}��n�0���� ��άٰaC%Vl��h%hQOY��t|#�?RE���ğsp��������z��t}{y}�ܽ���������֮]�>]����na\������������a����/?�?=���!���^����ߘ(��z�z�Vz\u�v�&��a�Mk�k��w�����߽S��b�i�_g����.���-�@���22R�(#�e�2_�n�PGlu�m*��@��mKlSa�����0¼-d�K��-<��)�6v����k���h�qm]`p����m�K��TOS��v�Nq��n�-�pok�Bn��zK��_anAN���'��G[tS��s�MĚ���8��8��ٴUĶ���zC:�(����N���#���Ū��E=V㴟��HOZBk�hm���wk��[ҳ��?N�Sr�=nK��'���%Y�VfR��52�S7r0���9Q:r�v����,������-<J`�H�(�£�R#,tG+b�Q��ԇ8j���!��!��!ѰC�a�dj��n�(�Cʹ�١�١�١�١�١g �����P1�P5�sp�z�y�\�~�E���˜���;)�q�sj(��,��w}�'Z	�$�z���%f	�)&@14������xGA����j
|����τ��]�?��i�W&��hA 3x�B�tAX��}=%��!d��|�=���{0�qd�c���f��b�� &KLgޅ�B�A���L�^��7���G]"ҙۣ�R�� e�b���R')W';�N��N��:9��h����N>����� l���R'��~6�)`���7uT��:%Y�l����:E�:Eu�Y��:r����H? ��#�PGN����PuDLu��^����0�ѵh�/b��j��p���e�rÕ�i��۶�pa      >      x�e�ˮ�;r�����_f�+`H#�ȆC��2,�'��o�/��E�t$�>{��'���$����������Ƙ�����N=��v���������������?��X�����K�S��o�}ÕM��̐Ҙ;�?������/�ș˲��D�Ԋ�-�Md���邱#Y�]���Ͽ�˟���?����ĺ:7��r����c�ޒ�~�?��������	��ĆRS�D��×n���k��������yK���qIqm�Z1d3kk!�d֌���qq�����>2i��q����jk̔���Fg��kdQd۵O���7����ɚf/����]�~b%.�T[�֔@`=��K칯b�5'��j�i�Bk�{1S%�nʊ����u紾	>��
Ai�m^��w�M��l�Y�r���<m��`�(���I>�g�ݧ8<�mӶ�|?����7P*~�>�f�}��vq˗�G4ϧn��w��@T�_ѻbj�1�\m����[f��`Ku�`�����&��L�<�Z�{�18���>�ɗ2��{�<ku}3V��T�b�M�)&��Jd�m?
�.�1�A/�E��Zbv<a9,�w۩qk�`ۻ�j���B�jy�Fx\���#���o;܌����y2��!Lug-s�ɵjf;�^�y�k3m��
U����.K��Q�6v��3�Zɿ9�W[��B�0~����,XL3��x��v��(�4��t�3;�Mf��*(����te���?�l��o�05���K�#D:ت��x�����  |a�(����$�`|����(qT�mƸ��O�Ff^�^��a5� Jsuu�-����0B>c,D�j�f)�J�gVVɩ�r$٘+th6����4�5��l_�0ف���,�^���~�V��ޱ`�,>�05J)ٱ[f	�zg�P��^x�,t_�O6��K,��-Y/������`�P$��n*5v�Mi�2�o���,Je� �j�o��e���6�|
w� �<� �zc^vY���[(���Lܳ�rRyk>|��]�����+3P�q�p/Gj��+/@�Tl+������-gX��+�N���vi}W� 5��jm6�(��锁d����;��?�������z�x}�dI~!�B�7�j̯��5V�ri-�;E:�iћ���N֙�)��7�)��zVT��B�^�/�0
M˻E �y�6vn�y����z�S���`�� ��S��I�Y�3`:��?�o�
N�L^/E	8L�*us�39k=���t @�U]dq�mBތ�:k��6F�ݏK��РК�Y����]쬤3>`��fM����V���dS��u���s����e�aФ��VsR��w�&0N�y'�\�XI�m���{���)ܤ~�I�
�"�����}�N�beQ�?�h�G��bI����b<$<��j�~k�P�zf���D�^� �q�{���,m�P7·���֔����o��R�!�@!$�n���4Q��~���,�o��D�1�Cd@�R]nE2K.{�i.�Y<
Q=B�$f�n��������p����2�F
P�Ss����*��1��m8��]aI�D(п����3�-�\,�)Y|?ԛu�&����P��?����H�_�%�Y`�H*�kB0����������eSL��lFj�t�UI�L�%��ߔ��X=� L�R�W�m�=R��]�c�t|���e|`k��J�@+�L^���8qe�IpbFz��U�"3��9�{�e��m�S%������И[����(�F�>Wb�œ�4K΍�`�J�nBG>��sӞ���$<�����%1���5~����Lus_Ζ�(�ܘ���%��hWp�f�j��
|>W�ZT��B��/�9���i�t����c��O�?��f���aasY�$EՓW�DX�	\Q�(�Q\YA����ؑ�;Gw'�D��ͩ*pme
�u�s����4���&�//�F�;�	��Z�RY��"�ē�ți���\9[uJ�ӎ��#��2��&c�'pJ���IJ��Ad����,����zŶ�ӔaG)�m�b��*�����_�Aѽ�����Yt޶d�XFl�BBn�&��F���Q���v�;�~���`�r��xַ��8I�nk�,��X<ܝ�`���P<qʦ--���X0�wA[������쏚��AM�GX�>���G�ga
R�E,�h`B�:J�Y��+!o�X�)h���J��S�lL� �E4~��=�(��$����4�2�ƯX*��%����`E��$Xm#7���Ă)���y���e�X�I{[rG�����������P�V�h*�u����Y�V�WƑj���[L�&�~��*�@�T�Z'��֕��T�;Su�ʗ��
ո=z���Hd�Q�-��iޕ0g���-��!2F��$���-R�aq7�lv�)�*��5h	čɱp?�포j��(}g�U��Q�4P��m���@+��#������T�0��Bk��Ґ)a�%p����SU��G�����s.N[`��aSU����ȊΔ���X�P�7Z��ڔ�K�!��.^{PJ,�x�D3J�؝��EE����J~�}���i$ŀ�R����C�	r:4��A��m�p�xr��w1����*@͝k�-x�7G�p6:�?� ���NN�S[;�J��Z0�"�sǊ����	l5�M�U�F\�d5��\nc��n���
L+ޖJ�.���4�5�еw�W*�w��M�V��c"!`�pl
Uox��z���H&'Hy�7S�I��D�̙IXL���נ���M%���ED)6�|}��_A1�����C�_�e߫_q�7�����_� +o���t�JN��2+	3����OtTt�y�g�Ɣ����.#ps���ɷZu�?"�ts$�dR�;Y���	��h�gnM�vֱdo��7벟Wޔ�롋"��[1l���S	�v��6�X5�j &/�$c��,<���paT�����CZ������	,��P�p����ws���i�i?�U3b �Y
��Wee{E�=.[����-�4���������2���r��m�{ߤ��$�Lh>T�$i^����)`E�)&���yQDO�?d�6�+��l>���J4�������*�� C:i2�$f�0�������c�+�?���\M���`�9{�{Hٯ� C�;�B��&E�u�JV�)����r���1��\t���	���5{x~�r�� �ǂ��s���r@ըR3��sx�C���a��Hs��4XDNHRaf_��y�d�3F�w����Ѥ�6�7��Xo�7k��
a�e�0�|8�� ��|䩯�ez����쐝N��#�9c�s��z#�� y�ڛqfK��/�Bb�S�{�Z��?�e�e�v��PV�Zv��^�5�(טG���u��B��#GݗI��~�� ��+�Z�!_T���B]>�$ G��d�--8�qڍ�̀���Iݚq�-C�W�uJ��U�o4�an_ЯvX�:Ի��ք-����r�?��/�.�cQX9ꔤhR��	q�źT�%�Y �d��1��,u~h��
#d�p���`�a�}�rY8#%G�7�ED�
K�u�#��#�P�Zn{�g�N��g>#�RJ
p��2-U�7���S��\u�^��YKh��<�sV2�c�����<O#�I%~�\�ze��iHu\O-`u��1)�%ڠН7�����¼�Y�	�o�� b�F;��e٣�,$��8KA�'���CI���eA�	��*�&�G!�MVakʻ؋,F�/9m��i�C��S�Cq"�,��F�geV�@N��c�+��j��L�jN�vBԱ���Έ����a��v%y���V�;�%��6K�zC��=	k�KN�p� �O�k���ɼ��"�B����HMg�c���=��J"KK�a;������yj!k�Le�fZ�vĂ�����m�fʺb�+m%�$�:'��v��� ���
Y{�3ڟ�@� @s�=�g5�e��b    u���@�/���&܅\�� ZF{���+V�����Myy���>��R����VZ�P����o!QM��2_g&���fe��/Z�"��L{�,U�U��e�9�u�X^;�4�8��
B�� ��;�j��H���S���f���-��l�=�Y�P�k�纮 Y�DO8��1BZ��	��'^i�v�S���.�܃��f��1G$�jyO&5mc��P��ʴ��ѣP��a�ԥQ)��$B���Ah�#0�\��YT�؁�����ߊ�|)OV_�����h?4�� �
t�W�פ���r}��,��Fd��BԞ)I`��m&#�{�)�mm���==�v�[\�Q�T(G���fyJX8o-�8�ɘ`����-H_LjdB�]ms��Y�J�D�sr6 �� OڛGq%V�)�挖���IZ�����׽��6y������J��N�^K]��o��6��Y�ԭ����N�o|ؐPdt+� Q��I�i��/d�����99���3E��x��h��{rߵ^	KH��<4@�g}o��O�OZ6ഝߵ��M����M����7V|(y6��l����0J�В��m9{r�Lx��OUnI
���=NR�,�}��=��d�|x*���Z�pJ�t؁����2/BN|�6E�o�����N���~����o9�����ʡAs�m��ň�>���Y2��(��$��赑m��P쐡DwM�V�����i���x���� ]cY�����u��'zl�������YE ���x�b$�uU)y�A�h��0%��SC�����n�������ܶ!K��$���������r�yU)��a��},P�_��vr{1k��|O�̉��Z8����IdI[.�2�{�~�6��aRo�(��ٺ�F�w�U��hG>�����J��]���1!�����o�W������T������T�
Jl�A�>GMP�2eɇU`;����T�=c���ڨ&�)t�jP'��,6V��;�y�����:Ȕ!O�e ��)���̑�.Tj�����SY�ɇ�2�9ЄF�)ErE �F��k6B���Ol\�9�p��-U��*���\��h9��~&  �X�?��{�n|��/"c�؂J�i���Uh'
�E��p�.��D�.�S��&�P�jR�jj�p�E*u��PY�Q�9,81Z�37^��hh\�E.<�.V�<"�Sio<v26�Y�~�v��ʜ����3�vy�� #�� ��8�5V�<�μ�hB1��A&�O����R�U$d�=��V�F��bs������.İPI'�(zrf�,c'�i��h�PՉ�~�rc4e�G�a�`��PS)Z�~�P���=Urre�G(����MMj7�m�],P�͓��l��S=��RԘ�rC�RQ�(�٦b�\�2�;�!<�ܹN��ڢR_3d� �w>�B���)ѡm�k�+^d7�&��Rv;]FN�|t%�̢�jj�ڮ�Vִ��	yf��N���}�ôDQ�ѩ���e#���|.�����:�v�ј��EU�ņqǐOl���E�l�����*�~3o��έAН.U9��Oԕ�}��*���6�{~����
S,mBj�֥��#�1�)�/�8�N�|�~���AA\��]XR���w���wr�cX{0ʖD銁^RQ��)����9��{�əGi!�z���Ryna-N��g��y������Z�:4yV��P��!0�u.C�|d a��E�	�b��a^���:5v��Y�J|2����P��ZFHXd�Cǣ;�N�|D�,��� r��N�>X��q�FQ��G\�<��Wf4R��.�Z�;+׻�Z�|Ly��*|��� �y���7S�{�DY����"�&�I��e�E��R�6��|y~���+��Ԩ�%��L�;G{
��'Q��63�fFYZ���t_�����.\�3i�w�J�e�g2��@j��x퀐�.��Cg�B��>��쐕^�/���Ʃ��t[89��^x�\ ���]I)�5�E�!�Gl9���$��d�v�Y���y-jG�z�w|��+V��avX��,�����|>bͣ�ޭWr��N~<b"�i`>���Z,5�
W�G�0���
Y��I"�6���N
3$u���5l�������"�e;հ�ώ�<y��8��N�|��*^YmmML(-h���E��+;ȁgʔ�K����g�cq�	��5�o����:� l-(U�L��!FM	��QsJ^?;Ej}��.-�����ej䡨��>��o����:��D/)��o�I0�����p���=^o,t���pc�����J.����f������HTgW��:��e�on��8�_�|�:of�K�UI��B2a��977���
Yd�Q,F~�C&�ꈤ��lP����P�OH"��ެ��v\,���؂�h�D#�H>,*����a ڿ�W��:lO�P�{��� ��>uyO'���<Z�GD;�ȩ�K!Y��h��Any&���	/�̫�x�P�F,O�J~M�S�k���Ola��z�z@�J*4OM࣯�<�9�5���d�j�GTR
R�.�f�:�{^�K�ߤ�ʲ��͇V�0Z�Ӌ���y��mñ����R���ғ��vO��:Dr���/$ˊO�񥄪I��L�(��c%v�O�C_��O�vWu02�,� 1��Ǧ�d��̲�]�����z�V��Vp�Ce��P(���V+�uA�|��Y�W���0��O�kP�O�9�[��ӡ��}����VB�y[XbC(��"b�,;(�v���/6)>���(2���^Q��ݯML>�&ԋ�Ɇ'��\���&�]��F�b�j	�-!X��72��˨HC�� Q�j�J]��ͮ^GNt�D�KP�f�֒������>�/�!3����JɫCtT��N���1�U'O��%>�ɯkd�HA�!��R�H퐾+#>��$�k�0w�~�����lC�gC�ɊOjQ�q{� �d'�VUpWB�ߞJ(#>Aa�~FY��N�
��]���Ӳ�#�'Vcj�k`���J��sKvŭV�EޜX�K�윅t^\'[rvHJ���[��S_�O��
��c#�����3���8ŉ:O�!q1S��cn�$c��Z�)^	e�'��&��4�8�d`�(��M�]zNf�N�̽s�I'���k� �I�gCNr����(+[>�N��R��ћ#�j�v ����8Y�IgǛ���G)1�ky���Dȍ�|�}��*9zOr�����rIc���`�yiKY��P��^`U�X���v���%��y7'#���N>�I���Y�5��1��L��x'>�Q���^����O�����zl���N��p�n�R�e$�Z��S���\ �*�1�O�D/#���!�NxޝF�ʧ{�ɋOÚ"z��c*�smN�����:����~".ȧ��'��*�a�Q,�w�9u�Z9�i�ϡV?���aR U�|����F?;&NN|�R;���̡��:�
Y3׫s��+ȅO�fC|X��O]/S�\�#<���K���@ĩ��"�����ߎ|��:тׄ�J���~��C*[�1`]�1E�'ȇ�IdS$��;�L�kx����t琯�H�֕�#� �O]C*DhC���Q���:oՓ������nୌ۞jɟ�)'?>mg��Vwax��#=��>��i=�?L�d�"�6��Ɋ$���?��Z=eJ~|R�kd��j^���.�%U��M�>�@~|�j~Y}{vʁ�sirVT�{?*�ʠ}$�,ݥc&&���c��Y��m����������u�#iӥ#�(a�}{$�՜"+>	�\3T�DW�S,M�$�9�u��Ȉ��Rd�k|4�U�f�t2y�W�F]Ar�AV��F�ޤ��M������{b�b��pFm�13��l����j�TO^,�PȌ��e}��b��_Щ����v�~��-�")�0��	1�JPd�~�/P�� ZF|V{�`��HـB1�ِxb�?��iN������1K��:����Pn�c�x�4��Zc�2.+#���FL�d=��9-�e�g5yL�u�
�@�s�    P��yj�s�_6|���H�m
[��[m�������i��%�[=�A甧�̽%QSz󕐯h�*�fCf�3�ɶ6�
�@ϙ?�<�BU1ڏi�XHV��y�<��6��+L+Cw��g���<i!�홾k��C9�B�Ά�b��X�2K��	*ú�{�`�5�X�����*�,�Y�ߔ���򚵖I?�-3>��7c�69/TW�
�Q�����)T!Ղe�;��ƾ2�b-���c=��}b�+�"@�s]�ҙp�j�����3Z��sK��ߙ�к�"A���]>��I�2s"+>GRz����)��AL�����W���h�B���=�T�I�&�ju��(��\�tݪ K>�9�{�k����X�Q��g��Y�[gNd�Df���H��KQ{��� ���Hgp����Rk���Wr��pp=���䎛�{��D�1M��Aק��I ��N"��s^�C�ˌG��T\���5&�sh�\��C��SY����ڃ��z��h>Mє��t��������p=_]����#Eψ#O#B�ݼ�ldʐ�C77]G���muRo��.sl���e��	E��BG%ƛ׍-��w�?f�o�^��Gq�hL|uut7��-q�
+��&�j�U��{0����΍m1��h�y�V�Ďт� �pL�\&*�>����r=�֠�u�B�]ǈ ��E+����z[�j�z�
_u�c��4t�T�0?7����Ѳ���Z�"uԪ�hD��Aksܘ�В+dm�F[5I]hU�ҌO�Qe�2�e�罤�Z�1y%kSӲ�?��o��{:G]��xJY��d�K�i�dl�c��4���A�:M�&Ց�j�iP��j������`�2⋩QW\�#�Y�W-F����yysxL&/3�0�H�2:�Ut3E�QdV��2�Y�
{���_�����d'�wK���EPͽ��YTʎ/V[3c�؃�KvTr,�ִ-����J��K[Lx�9R5��i��D �g�e�;��L�g���ѕ��(����<�!� ��6"�ji�j� q��F ���eʣ��ޭU{�ܒ_:�ӄ��� 2���"[�7^t'ٲjP������Zx���PkO���
E;Ng�^Z0��ʚg�o7�6*�$ࢫ]·C,���x�1����z�yS��N���hc.�&s�g���j��$��K��'�uމ�����V���l�N�6_�0?��������t�G{1�h��O׸�f�;˞'�V]V7�����A��m�S��o��iQ�2�)�����<l�s6:"l?���<�����e��֞�O���x=���y���s{_o-�^&+9".���P[!n���HϝN�ژ��KlS�yX���Z�t]���QΚ2�ֺ�=_��Y$Z]���]��#��#o��C�<Z?24:7tMPMv���♺zWT�x������o��G*�0��9x����C�9�J��KJZyz�� �G@,�7{���S>n��?��$�[JE��<m�i߭���x���ȟ/�/��q[3d���jkt���׳���T�O�;�	m��/�)���s�!�f��7_�\�)��]s� m�\T�w�c���f��}e/�߲�vB}Rk�3���}=���(���ͣ~V27�Nk�C��oK:�3���WfF��(gG�S��]����gN�X%���,��w��FU~-���2.g^�=ϼɸ�A��մՕ�z̔���d�N� y��MT�C�m�=	U_�7���h���7DX��h찙��qm�"p�J�1_�I��8/8ȓ�\y���W�#
�hA�Y%I�H5u���:�����g�jrL�<e%�8��s�]��EN��l�+��(k��PeU6�mD�"%HlF]>�@nqb��V3����36>3u���v�Y�]:g��̗�c�D��S_%�.!ʲ�k|[MW���3_&���t���{$BA'�$w���b'6b)�	��4�k����^Ȣ��|��?�BR�4#����9n���0��K�����摤d��u�Y����G��.ӽn�X��3�̗�($,�2�-D�:t��E��<��)w��m-J���Iptp�u���SU���;���m�C�5�
�X�S���߸NCx���^��	!�����X]��p��������0:�ad<��*��D��񨑽f<��3_u�#�D�¡{z�!�q�[��͸υ^�|�ƍ�2�el�M�Q�Գ{3F^�zj�U`7�7!�,uh#��J-�ݏ���:�Eѥ�j?w=��f.P_$�[[)�WtU���[^��:���I!���_3Nˌ�3_�6u0�HCzuA�5��q�0�û����S���_kwN�;k�H�D>g#�<�$g����d��tk��F�����& �>U�
ɭ$\~��ta�[䏮��^T�R�����%��H�;CjAfw�n��9+B�|Uc݈��`�ZuϞ�%y����ݮ3C��kL�O�����%gɯo+�[J�ZCO��Ef&�Rb�|���L���������S��΋㑰t#l��*_u�Ruh��Or?�U�|E@ �;����3N:��}�C�溳T�J;nm}l5E���ɢR?�9�K�'A�|��;u5 N�_�ˉ�S�MDFN��
[���uw��m�
�c�I�`ߵ�(	�D_%��̺�m C�9t�!�ݵ����тW�$uJ�Ӛ�H ��B�g�6a*�ޜX��e��G�����-�]7:�����,�s�/Ȣ�<j��F���su/8��Z�}��y�O�,�J9����tW}���A��m��Mt��[V}EU� �<wաy
���o����߯�z|9�UG�)�A�ꏩۈ�$+�-��g7�enA�v	+���l�:�ao����>��։�`��씵��t��T��.��~��O�е�g/TWvȲB�9]Jσ?�����[�Z��oT��3G>���s)"5��W�ڹԩ/ݻ���|{u��,�%�>xb�=&���kuޅOl�\�E}8Hj����d�����w`	o�����xo��2�xb���i��ǠӍ.Ĉ�P�}}�5�ze��D��t�.,�P�YH;���_<�7���!3.�Պګ�%5<��}�w.����&�!@t����Yf�W[�i��׾b�K��%����G���ѷEؿy���]MG[C����E*!�8�ڴ_֕.'t�Ȳ�39�Z��U`���>oq*�.b9�- @�d���[�|`�IԜ�r�h:�%ȩ��>hj��:�*%E6������OMr�[4��0ɱ�J+�4��K�vb���O�O���uԍ<�6�\^fI�Q���@z��sof�S߲��L.��t'�]�U�Zf�{�@���:�W֭�vXd���k��շ�����/�]�V��z�W��}2�tjQ��Pː(�n۴��^[��&�|nR�R���.�8e��	gOCj�W��I�)����;鶶�C2����lԾ�s�.��U�5%��&D�ݶk]��,Dך�h�2���,�1?�3̹�E�O���3S���Sǌ�ї#��T���s0�wQ�Н�� ���>uU��s[Q�l�z=gQM�_r�^�l]�G�1m���s��u��\�-�^�:�&��Nm��Ġ��H�8�ݨ��}�-�Ѐۢa�H+�r�˙^�����z�\�G�v������Ԥ��6�V� ���Le���sN��[���z�YW����A��zʚ���\ j�E�N��������]��ft�Rp:�0ܤ͵�NξU��N��5��뜒���hW�EX�����g�����Am4j)�=#z���I
>�o<���I���iY����kY�s�ֲ�]{*���S�b�n�C�J�zRw�4I����Q"�����sP�����d~4�g�-۫�ȫ���B�]R�):#AI ����ᾇ���R���n㌖��y��k�4GI'���i�N��S��3{�u$,
�K�����O۰�;��s��W���Y�N�w>Y��n���<k�����w��N��u.�aQ=�BQs�@A   ����R]t�w�Lu�<���f6Ƿ��\O,d10@R�$�[�X�R����^�f.�']>Ǩ�zօ�[V���n�+�V_2��:�W�!-LMq��N҆�d�&��n*O���UAN=U�˘f�9)���;٘��i��]~��������s�������J@�~�n��z]Kb��VD�
J����/��e������z]����0�¢<:dE����Ԝ��~��+c��O��OF����������l�q�Q���D�}N��*
�!R"����Ă�8�CV=�E}��s�	�)�6�tg[����e����Yk`[�Ĩ��Zլx�v��+-Ȩ�a
�p}M鮨��f����%�ح�щ�d�}�ZL5ϱ��縣վ+X��DYŨ�̒���o ���8n�g χ�ʥ�`x]��o�1ߢ��/����\�.� �^Ǻ��)v�}pa��C<QL��6+}͆\�^$��ӎj���Y����������˥W��I=T$x�j#���ŷk�6sn*	���]�N2ǵ������f�������l�ʰ`��"�Z�����u�ns�[����6�%��XU���~�Xs�ǯ
���ّqxn]e�ct=�?�d�:���I�u�/U��I]�{�K��U򳑤��k̄��8�ܺ�����u����]�x	cm�dl1��J ��=�`�ë����!��Oר��@U��hr���C�ތ�����X��~����jr���g{�-U���#9�:ʂ�V?��8��:<uƘӥ�{���F�|��)!N҇�a��;���ї֓?���K_����@�:��:`�w��8	Uꐯ:L�o�j=�`�:#�ՠQ��;/75Tu�N��O�&q�{r�<}�>#ȝ� ����ʙtQrѽ2.�����'��DE÷�ػ�����j>�@�v�q�(׷7ɝf�2Y������w��N*�ǆ�E�<���a՛�P��O�vcm��s���=9�v��H�HbբL��U�����x�ROE,��0A���`�;��,���0#�N��d�����,�L�6��R��:��9����×���y]���,u��ԁ�y���hХ�D�`b��I޶i���#�|��Χ�#ȡ�����,�\�����e���H�r��$ȟ1X��B�B��t�G8��>��/�#�A���W�&�O���Mw��Ck��9���O�p�{���������G�W~�H��-���G����:����mH�l�T��z.���������S��      R      x���I�m�q�7���Մ��}��%�ʨ���0�ݚ�)Q`���;�Jb��7c������d��Ɉ���������?�o-\۱5wl���˒���\kܗ�}�?�ß��������������}��?��~�����?~������q���Wn�J���b:�����G�vw\ջ��n����b:}��s=~�O�ϟ�������������ͯ�ӹ�?��u��<��7��/8�����J���x�su���!z羗�E��|�����%-e�fw��#�εМo�(o���o��Ͽ��o������X��������ͯ����қ�_��Ͽ���������_������_�O�����o����������.Kt��#o�Ľ��:s8���wS���?K������"������o��*���r^�l%�{�r[�n��5]ey�b��~��I������[��]�������~���v��_U�aXV|_�2�rk��s����Y|[�=�3mY�夻���RSZה������m����L4��o����Q���������U���j�q�����������X�C���f�ÿ��?����/��W�]Ƕ��mb郞��K�z�\�v���?�������������_��,�?��-�n�����Z<��d��ku�()]��M7L��[ƹ���ke������v�eI�l��|mW�l'�a��}��.k�5�����Қ����/�|3-]Z9�!ԲoE���uݯ��6���J�ތ:�"�~/:a��]�O��2�U��Ƽ�R�P�c����i��0����s�I~cl�^���t,%�kH_�����O���������?�����G��������+W�ƇwWa�w6�9mh�xʶ�Z��,]�ZqG]�����:���]��ۚCQfM�����لě�u��3�b�L�3���a[d��ƶ�I~�~�K��۶���g�8��^zl2_�̝��w�֚s���]P>� ;��|�Z˲�#�p-���dH���0��+o��S}K���ño��>\�넙f��ŷ���w�]^RX�5�{,���/��2t�����{m����.�8���˺�5�#�廳���j.��-^2�Mf��O��2�*�/�|{w�m��PZ��D<gp~]��\}�2<�[���k]��DV��K~�[�K]�9V�"��m��w�|n�^�q��ď�)���,�A�u�o���y?��ѡ�q� ��c��B��C�c.-���Wm�~�%���8��<�ߞ�k���z]V��	6w�����9~?m����.ô��;J��'��)��j9|�1���#H8.!����vִ�"��Z�#�=���$�79M\ǹ��/��z��JN�Z�M�������}��%���������Ӣ*%���q�����.�t���d�˻���=3�a\�ٷ������g����W)~Y���#iٯ��i��k��"# kM��&��tJ#�)�u���U��.1��Iׄ2LǴm벦]|PiSHO9(�8�%��	�0TX��%��.GpgZ$��%���M�i���x_o~��_o����k]��֣d����kXּ�P��Wr�4}��fM�C�O�A�#Mq�6�O���I�˂�Q�~��%�2t�y�a1�������le�pu�$����ΤG�0,���ec�G��e��3�D+[c�ԆF�k��������bZ�$�˯k@������7��j{�η�3Mt!�Efk�X~y�qe7�,^!�S1g���u,�rn�-.�x|���i?L��$d.���bP&d�BhǞb�\X�a���4&��0��r�S����qnY���o�sǺ%Y��7�a���S�0_���2���J�E���b�O9:�F����GU��J�rF	�e���e��k��*��~�OG�Yf��CI��r��g�%746�E��l�u��)� %9\g9XK��K�0����CC��V!B+��XʩY�0��{�/���{���J��/��
��%;�Q�Y��}���/��d5�a��=��aZ�I���������|�%_��"kb߯S6���,���Ơ:�r�t�o8�=�*���7��.q������U������0�+��y�Y�0H^��x��Du�9��y�(Ab�-x���V0�~b�o�I�4���2��m���a6��U�n��e�4�����fi�x�4��~:6��[ �rV[%V:�C�Ծ4	�����|�\��d���={�X6|S�N���9w�\�����ET��d֕�nK�*�n��j�flA&�##�����<�2��
2;Z�8PZ\��W��v-WHr HT�o>l{�uW�J�m�������{w����ݥ%����Z�L�u�3�%�D�%����-��Q��o�[��8ԑ��\%���;��s5�뒩��ť����)��T0oᴾB+K�%���~`��l�6c$W%��M����=,a�\��E����l����6���k�{�� ��%�fMz���p	'�XH3�,��Lw��� �D��o��\�����i����}�G�.�Y2���Xn;ĖS![���\T�~��%&Gfv\"�W�X��u2 /Q��CF�tP^�K?��� L�����d�^V9��
Vo.���w3�R�~Cv��,�R]��RӶ�\N{;���i5�/ǐqj�3�/�t>����}��b$n.������f�K�ӗ�ڨm``�B~>�w��Q����YJH�<�����7�[4�$k�`�������O���=���>��<��~��̘H)V%��)f�*�5	���g^f0cb=�>Xrh�-�?�S�����C�u��_���QQ���Rg��p�mqw[����t]׺��s�-�.���Zi��f��Lĳ�!h�X7`��2�2���Hu�f����"X߿��i������;�Ew����}~: ����Iں^�/U6]�69@����|���qrY0��n�^��k�gY��˯-����es*����D̰������B������s:�y���u�̙q@h�*���Y9�b8����(��^������j�i"��U��794�����d9n�x>���d�c�(��tZ֋��'4�}*7~M��S�.K�p���P��$ͺJv7������ߊj����DG�E�&��I�M>i�������B��ck2�� ׶+�{8�����)6�5��i�R�iU�47]9g��-�}���L�v_��c�{�jUC�6��m�n� !��YV����K�}[7�AƹfI!0�AÉyÃj���躼�2!��2��&�%�$���'�7���M��J����3�;Q����0��!�y����)�Ҁ�DS-)B���I���b`z~y(EǠ�
E������}���Tlf7�A�	�L��@�<�E�{=��Og?p���庚���Ik���ޤ�o�����|��C
��e����,k����#n��vn���A��D&�L_���<YM ����w����结D/�ӊI�zQ?p=0d �R�hO��HԜ�8��BJG�g��RvᥟO�K�6���'��߰�Iv ��פ���2�y��n��!���a�h*�on0bǫ'���{H|�+���l�^�;��g�x\�޿yHy�����@�����|`ߌi�sPw�IJ�Q*~w����p?�;o��nDĮ�hNQ?P;�Bo$%��Hўw���N7�Y���w:����X��`�d���$J��7�17ʃ�>��~;�(��s�`���[�e�7��Ϛ�v�N�Ǟ���4�X�S��:���N��O6��A����?�;�(q���J2
�v�`�d��u�����ڍt�x���U�{k�hU�D�])���>�-�@�2~�wޖ�k�I����	�����0c�w�����}_�.і�v}~��_�M9g�`'�"�}���[�4j�N���f�1��ټ�,��/����r�c˲&���Ũ�4��q�T�8��,�5������g9�[���as��]� `�)    ��.���ͩ8,qg�[{�G��A���~΍���D�.�0�����HT�Nq�[�	F�|]�}'��f��R\L�������Q����y�x�D���g0��7?��N��Y/��M� ���!�|;9�D*YQ�F��Gv�����l�����H�����k��Y�����A@�OGvpt^���q{�����.6K'�z׮5���]CO7���y89<�Z	�K�ĉy�Fu��߼�Ӯ�A����9�}Oܛ�y�Ɇ307KW�G"�2�uZ|M�#"��̚��P�Q-8�?+R��WeMd�Rñ�<[e�Z��ƞh�h*.w���A��mŅ�}��M�/�؁� G�t|� �L$�[�5�,�v��6����l|�i܈��n|[0dc3��0 ����4�O�D��S ���������_�>�c�'��a��x���� ��&7��TA�|�:롆ӇC�E�$��� y��Zm�A��r��<���*��qP(�h*�!1�9>즃x]0�}�P'&��>�"i���Sl�هt���x�-���tk�������r��ř��@j/G?��
!����C�x������WE� �Ⴗj��[͜:�U�������S�l����*����Nd�o!��t��M̓�a�v�nAUm�v�o��O��=�`��/�CvX-��e� ݂�8{j�ҭO��a�X*6���23�p�e�K9$LϭY�k�U��D���7�i�l�R��Nj����D�-�e�O�r�gK���U�{�A�Cv9�p�n!�-J\P+�z���������y�0�Pv��܄웨������&����Qɠ�zO��P~|`n���{��܂)���-�x1{$7з>��IQ������ܫ�0�6��i�x�ȹ@F��u�s�qm.-���=!�I�n��'J��T�e��\<a]��'�����5���-�`���x[P%�#<��ق����G�Nf4��;`�t� [�C����/ @�O �B%�c�l�40���o;ہ�I��Et'�L[`���~0m"��S�����2M�����>]{6	�������/O"�c�JRO���֛�2�;���S�W{�[P8�"����}K5�z���a�nAE���El<�/Λ���r}�֫'�>�������h��:8�>W8�?
��S�tEu�����h�4P����S�ml"�(%mus�fr��v���Ņ���V������R&a�l��4[�b�-?�
�\T�3��_�e�L���1���"���@*��*����ɉ}�*�ǡM\�'ٙ� �疙����}@�E
q�pѐ��.ǁɉj�=���b9|�1}wa�Y����� �DM�����cçe&�p���q��h.zM��ЕB0���o�W<]4�Y�v�eks������P�aq�tT�)c�8�91/���������z9W����\n�/��%:y���*���Jf�����x��&0x�4K������k��uo������D�N#�Mҁ�u�K������~�˲V�BH��1��MJN+���e	�@�ĸ!���z���,�j`����jr0(=κŁ���lͯ80:1���r�����i��+��0���Y�l�(.��5nBL��w�Z���Э]��}6
�Al�p�I�G7c�q1� L�Rx\LO����l�zc�=�8�T��O����t}�yG&0nx�0����}Ƨ#c�\1���\N�+v��x�\L��ZӁ�\T�;� dps�Ԣ�V��Y��ݙBr|9ROx�n���}�,�윘�TE6����Ňy�8����Z#���E&A�Rpx��Wj�
:4�Vi��0aB'���~�[����6��S����ϻ.�y�׷�@vQ�-���W��*{�Q���t의����E|Y�sȑ&��_N����0f.P�dn���rn� �$������z$K��.j�� ��I�]dʥ��x���<������ZΩ.�ܜ�r
�չ���~�-kPw]�P�n:��dR�I(4 �HW�Fv���\���]TU��5�h�ʶ����[�i�y���n�j/Z��N.���%F6�`]��o��׍s�A�M�zg&^f {��n�@�]@t: �Kt����;H��T���o����!����F��s8\�d��O�m�s^N��"��)`�Ē���@�t���4�>�\ҐY���%�y�d<Ӡ�Dɒ���� �D���P��LG5S���@钊04��4�:݌��_�>]1&�.�XD�Q%�NT�Ď%K�����)f�����\�L��['�t�mـ쒪��X5��k�nv��W�T%?�i�t"E?"{-r#����]2!��]j�vI��� ��@�t�����4�>:�R=?>L�AՉ9�V��僱K*��\���$4��]b������ �*�sJ��t^H΃�N��f#���ÜAd]b�����>�{�i\�{-���� �ļ�Z�=�����3���W�3�d8��|��*����|�il;dv��ox\�Uuj��⌽���'#qDg\���?J�w,�8�~�����u���8�8j~�>9^.�p(��d.1I޴�v@r�s�QӠ�D���'�ƀ�t���|KL�0݉}�o�Ig<�N�ƌ@�dIjv1T�ҿ�fgk���Y�A�%���}�I���d���.581n�;�b��K�l��A�sx�o"E���ၾ%UJ<�<�7Q2��̫�b�3��R�북��IG�	���v�ys���I&�]�L�@���biPm����ߠ���f����z@f=I{ǪV��c�<Ȝƛ,룰�,����]y]�8�,��L��+�5��K�*�E���+�)MO�#K*������%U7jI�L���0��OBs�TL�? ��������,1�c��%U�;�f0ȱd�k�����nLV��V� �D�;����AC���(J,��eZ>�:�k��%�!H��)G	'*W�ͧV��a�t��:Õڀ�L#<�������W0�x��4@�Ds��:`0�z�	o�� �r�d��fk�g_�=��ۏC:ǿ��X,�PM�z a�;�7��#�A���ڄ}��E䠿����μ�G������&9q����&o)f��%gH�����ʦ$k_'|���Ox�/̃�꿘w/�.� @&r�e�Vo����Aq��"E��meT��SF|VVQ%v�<8���l:��=��mj݁u}"@�Βo�Uɥ��������� �ľ�RqB�y���\��v�-�=�5�/'���dU7�N��}� ���=�Y[���^ʳJ$U��Q�T�)�m��~�S���s�
�-Y�����@&�a U9X�#f��WT=c~��z�Q����C��^2P�̧Ś���N���^�YK�s����x�T�wC�N��Ԕ�<����7�k�� h6qU�U�o����⥸!VV�m�7�e���8�vt����=�ȃ�ʪ��<C̓�����S��>VS$LKt>�e&BKNt���T���7���9��fe�(��}<+�*0�!� <�iXĶ,]��u-n=J�۞��e�{	�M�9u#2�<�{'LK��t��|5M#c�0����$r<��MU1߸�Aa�I���l�K��_6��à�D��L8�,)�9"vg%s��.�MN�o"���l��?���yƖ�@��d�M��!�+=��,PKt_����y�YYU��T���U)��9W�z��]��e�,K��µ��on��㎓�����(�*�����e���u��)�r�)�t�,����n_�hϟ��%�-� &�h�Yb_q�u�3�����H�ɄXV�3�Fʃ��W����- ��f�^Y��
h�%�0`ړ�>/1�����v�U��g���e)�7�¿�<���&Љ�� G����s�a�&���q}m����և�O��    d?��M��orx��W9j�e��;_��.^b���D�x)�sE��|Y�xP�A��z��U��C�,���������i�,�0�;a��β*��-�Z�w���J�{�4j�YV�zϜ��f���PUP�߷��x�j�}6UG�Z���M�� ي�,�!T��=��3��,��9��VT�?�Ml��W�y�p|��Ls��k��Vh��ݏn`�|����e�n��miپ�@�D˒v`�?� �D�'k����?q�}Q�{��u*����ug;*v+�T[���2@71M�gW�V�Tx�8P��g<{D2��2 89E*e̺i`pb�N�kn�U2��dV��a�{�2����5�X�{�d°2�71N�k�������D+��5��l�F����2N�%|[��ѹ%�a	�劗)y�ݧp�tc��ܛhlq;;��v9mu4M:��H�Rb_ ʟ�9������VPE���񙔸e�o�s-���DE��x���n9.9�%�c�y�gl�|��n\��s?�� ��<��϶���U�9[�D�%ʬ�x�$A�k�x+�ړT3���3���Ն�����
��k���&����r�]|L��A61	}O�,�a뿜t����L�k��_���-��d�b�y�����O1�t�uޭ��߷����y=���#���AC=rP�V	�&�d`nb<-Y�_�1^\�%�y���K�z6˻��ePo���Ƕ�<෢*�j۸W���ڝ������l�l<�WT�S	o<ȷ��Eh�,�U�����W21����@ߊ�&#È����g�~������g�K�P_fލds����)�l+��p�)`�m��s˻ҭ��Ӵ%n�|�/g+�gJ'�m�lb�<MW� �J�X��2 6QQx��r�kbPQ�����Đ�h:+r쨻��y���n+��5����O`����D��d�e`m����ɈHhplń�{��럖��C�J����� ���`e�j�a	�S���j�Z�A�ǡ�2P3��٨�L��>�b=�*����u������-�Ɛ�2p3�{�}tYa���/+*p��HVLH׬C
v�^�2'VT�.��l���Be��,X����:]�U�Τ;�%�ɷ3'0��J�?S�lj�χ1��Ӈ��q}R�	��������&d�qU��KP���m���/Q�GWhQL���tF����.��K�=�+�]�U���b����*:�~
(�}���d(We�7�G�W5��R�Zu^|���:���E&���|�r�,����_�%��'�ՁuUewꀸD���?eW<C��˶�[l���|��1�:�󊴭�>�Au��ס�Ԡ��*W�>8�������o/ @�� �ހ�����dM�����Q�m@^r�#�O{}�]U�2��� �D��m�Zo���U�`��Ծu `b�p��u��:��+Q�X��(�Y���M��h4���hD���'B�2��ݧ9u�b�Ɵ��2x11�۹�v�g��)a��l�SW-��M�nȘ(�<�	�`�� �[{�@�D�p!9���=f�=ֻ���lu�b�6��P��VM���8���J�v��:P��8�U&��	ֵ��@�ļ!UȻ�O`��|�&���)�՟k���W*noە�=�ҾNKv|N%��y> �>OgS��:�޳�UUЎYǁ�����U&��Ͱp�aUE�1�|�aU�<��i�������CĦ�vW��ƿ���j���g�bgw�%;���p�����!��;�Lꓞ�C����b�t1������I��_���J�[%�L��]�A����>�JtYeN����ȋ�:4Ѡ�3�=�B�Ւ���+ܙ�Tܗp�B�YUe8�B����qC���Z�Y�o�\�$�lҦ:�3����:��&��u��+'r�Y�)C�`t?O�(BO�A�� ����(������K�4�D*E,uM���Z�R����Ț�T|w�ܓD��j�R!�`�j�����us��zY�����l�lOUB�+�˺Y�&>��j��To��-Cݽ�M�����4@61oIK��TB5�����حw �����D��Y��(-ګ���[�[��%�_���ǫ����L���ⳁ��@�d��O
��608Q�g��7�(�m�pMU?r�ѵA��I�|��`�-��&R�*����6ඦ�όw%mPn̈́��WW���l'jzk*x��6ns붹�����T�#�.
`\���m�m��|�d	K<Y���r\^eA;w�)9��m����:d��g�Ng�!�����e:!���5&k�zTg��{�z�(�"Bm�nb��.]ާ*q�w�e�l�k�K;H�����y0�XP����6��5�m mM�vl�E	����56�1��U5ص���(?=H�>��ڀ�z��na0lr�S\��ẃ���#�F�����sr&z�*SN7����yC�۹@����s��ex�<1ڵ0�f�C�nU0H^�X����D�����	Gk��J��������Z�\ڬ6صf*�I�c5B��$�j���{�w�,�̿�X� �D�v�d�W�2�l��x�lb^qsO�������%?H�f��u2ZMҧ*������FOSk��q������9c�k���,:m�l}v^9Y�YA�g�m�m�O��nwk��A�mD\c҄�#�Aĉ�����v|����=p7�ny�խ�ML��2�?7cg�Y�P]E�+M7U{7�gdÅƧٙ��Uk�(��6���>�����M��iL�������;�7�h`l��i����q�7�6ѵTi�8���1��~7�6�hSk|�l}h��^ۄ��5�ss-�M��7J��<p51N���|����k�d� �1���'xֳL����t���T�4�/�\��A�j�0��N�^���H�r��,Ŏ���A�u��#'6��+��m!5��!ϖ)m-�����v��ְ-m�dcڳ[:+��J�s�)�Z�*�Ӯ*� ���['s�r���ɺ�!g�15X��[;\�N��y�������)[c9�x��iWu/��W)�y.%(�(&�|�\��h�S%��O�Q bL($泭����T^�wi�vx+4ܚOܕ(����&e'���XN
W9ڱe����%䦯k�(�foIAB�-�s�Gbb���<7�Ag^$�r����j,�fƺ���RL���e�#�R��
j�@?�VQ��ڼb�٦�6#K/X�Ŀ5�Ѩ�^��wP�b4����D"�P�ު�n���o��vJA�����*|}m�IF1�DK�5�����7�@�/9�	}���<}s�����Xwh]�8x� �rq���Y��o>BD	�J��P��-��6d�Q\$?3���d�c+ƫ� Y��~��J�1Q�~�!�Z�ْ��ȧ����� ��`vF��?�A
����G ��!�'ݢ�҅ꚍ�co��f�}-���=QF���!n�!�C�t��zI�?��^
�ժH��ks>��H�j���U��K�=�oN������_婾(�/�S��,>��lqdXڅ�z?���о᳔�f�ʏ?���?����l�Ź��^�������:�!���sy��{��Z�ͳ)�s�����t|
�������Ɵ>7��-�[�DB%�QC��i�D�I�i�$�����$Q�lUg\����(Q�̱���z6y�'�u������_��� B�Ɗ��wP�&���W3����
�i0�V��Ө��U���)�<Y_i6�jD��f�d��el�Čz�lSb�kAE.Kj˨�?�WG�6r���
��[���w/�i]�(��� istuH�O�&Z�D?o�(�|�&����h	/��/r�[���&��ʈ3����p�k(������9�阚wh����fi8@��dNk��D�ů�~�ǵ�t�T$o4��L�����σ����'��i��]�%��n�,���)�^q��L��W�u�4P$�y*�s@�9U��'N�h6j��wp��D    ���j�������ͩ�`�r�h6����i��9��:��}����dT!?E��K��g���+�[QW_���̀�����("K=�J��%@u�{Ėv�g�8M�:�{洝�x�,�m���ɰ~>p�׉y��R�� ����^'���_�`w�T���[ �Ω`A�s��b+z�E�-�A�n�	�������9��Eգ����~�w��9��o���9:���}m����A��P{2 휪L��2�q�T9�L�FN6r�['1"y��N@휪t�C!x�I��5 yN��� �'*��yZ�	��g�<��W��nض��P���S{
6��.��s�6�#�S��{$( 0�7�u�E.���{:) ��tB{7&�%_�ӝ�Q̷%�Q�M<�,)'�}k�r.�w�9�ZA5���	 {b��o��Q{Y`��N�� �s�xuk�"��sL������N<�~�ױ�W�Pp��[p{>k.�ڃ"PBq�n���s4��hDB�ZG�xx����������'
��S��
����Rj(�O�h��s������ZS9r)~��ۋ,贊���"�}����b�� ?1���V�
���ռ׿n����[Y�唩��G��ci7E7����42�(�f�6P�~�4�4�'U;l���c����&�G�?�@��D"�%L�X�tAG���<����دP��H��Щr֑~@��(^s�d  �S�o�__�	n:���c:��y&���� ?��AXO��7y�`@��I��di�=	��jR�XF�gii,�7VL�J���74n��'K� ��t���%z�9z�����k�8��B��n��*,�k<8x =S�����4�M@�77�a��QF˅��ms���!�r,�\�� c�W`�X7,V�uz`
�	3%��BOWT�zR|���o�'��_(��"G�&�]���sW����v�մ�����K"D���8�Ω92z �$����8��w��^��//S�uV��YQ��b����������RIC���JsX���<@����ލ
`�:��d�ֱ���"g���-v �����m���M�u��a���f?8@�d]ӟ��9K�_0�l���l��e����gcv��7�Ì��O��9������)��|@�K��X�%ˌ�kͱO֚�!�p�r�<�f �y�����:�?Q6��Q�T����x����'b��l{�O\�����P ?o�L7�c@��玛��y�5���Lj���B�tS2
|�ڣ��I�E��3�����9Hߥc��G������T4�� ��[��ySn����ϫ�7*n �O�ǭ�O�}d��Tڶ��%�S�uHq/7����x�P��%ٺ{�'�t ö3�|�ۘ_��e���)���)�|���K���� |ސ�<4��y>7����tl��\�3I���X`�D��xڠ�$�4u�@������<����<]��A@��	ћ���,.��| ���`SFL���y$��,��yE��?M�D ߻��9pv}0�Mӱ�h� Ĳ�>w��̒�,hiP�����u�1{�uڢz�ES��"�K䁰���vbݲ����:��`�n��؉^��R׺�ŭG�~�S�P_ּ�P�dx7
��,�<*�Ϋ�޹pĮ��OV��,��O�!�����*���^�OgUA�|�����&��=�Ut]���)�W��dt�N�@�C6�ic�Kc�M���t5W�
l]W=�R:rn�ڣ��{��t�+N�m:nr5_�;�Y��P'��۪��	 v"�x�pǏl�S��^�-A9YLػ���Iݝ ��<]�º��w��8{�\O@�.�%�Ԟ�x�T���� �����Rd �D�/��5�
��QM�Q� ��g�sb�Y> N�s�-�t�)��=� �D�ʹ��N���s	�v�s��C��}��}'��ˊ���Cw��, ;��k��I-2����X��tJ��֖��~: �*ԑ�g�v��Hq`�����Պ�(�l��tO����_.Wd����>�3�/_㭞x��*�;�( څ�Ƴo:4HB��n�.��@fZW'��GS����ҭ���gt��w��Ѥ���|�J\�|o l��
�� <�(�D>) k��~0;1Nz��� f'�������.�P:�� T]�6E>�cb'r�ѦHH�ٛ��|*h�f�􍨨æ2/���u�ԯ����c�?X#@�U�:��' FT%i���O�*	 ����b ܉�>�2��.�26޼` ��2WX��j�'�i�54�xu@-+ ��E�K�k�T�މ}CE��v�]�3��l��% �Bfy�y[�KO�˜mK~i�%R@s�).{?��O��}I^`�	�|�_ �U��� '&Od��`q�C^��3���ʘ�]> 
�n�n��\`��C@�D���;z`�D@���*9P�_ ҉��kq)0]Pa]70��D��$�� �.�þ�p ��J�LF4I'��FB=�D��.�/���T^gy�êUT�_M�^H��4~f���ry��0����X'^`��#1��P5�߭~ �Ġ�����`�7�藌���>�]����K��ŷ��Ź��w��r�c����O!�P��(65�]4@w���]T�L��=��"�#�q�Y�(<J�삁�A�O��Ë*����.2�ᔷi��u��
4x�Ho�.&n�F �DM��r��.Y�n9�]�U�c�%��ۻ8�����J�e?�G�뢡B�vc���E�,�x"?���������Jv.�ع�^���t
>EO����Y��j�.2��n�E��D���躨ʷ7=bG@颡,���"�*��ຨ¸�G���7-G��]�3�D�^��L4�PĎO#����0������C9E"��r��
u���'Zd�1s�@�u��Y��o;�<1j9VX]P|Q��ꫂ�?^(!�'zI�P;k�5��.��/۾���@��>�yc0�^�,�>��؋��-I��	�|"���_�~�t�hO� Jф��/��\pzQ�}ZCE��_�D@���w ɋ��]ս�^d�i�{ ��~���QV	F��Ò�o^|��w����z�|�61�UEho�F ��OE�:v�2�חZ7G���uA5N�>B���wυ��E���Q@�ŬA)��+n`YE@��a�c^?Q֗����@�E���֊��E:[ݻ��n������%��X�m�=�Lf�@{�P�y�E �E&9����UH��X>QQ��7vH`�"�`ͼ���&s���=��B��Ѿ��ô�w\����"ǷM�HO=���o���T�L"Pz����΋L�D6*DOBCy��H �U\�i��כ�����C`�b�Ͻ���'jd�h}�%T1|3G>��ESqU�W�i؍�(��Y�<'p{Q�!��pn/2�~��%K�;�t^4d�S����1��J�/2i��g��b��hQ���DIq?sg�'b��L�OF@���=����ct�T�8��,�5������g9ٸ��>9�������w���_2 ��%�_2�e{3��`�t��'���<������v����]�-�Y��Z��מ��HTjJ���]��< �d*��M��_rlP=��_2e��K�O$ȻP��jY��Mb�O~�s��_���))��gR>'`�t#�T_U�%?��g@C�-���Lޒhv$���'��%��� {ӫhA ;�SA�OT�+��&�':�G��Q�~���_R�ӣ��}b��r�	p�dH�8_��%�\�y�ŗz^7�9��w�����{/cQ���e�R�s:,@�y�������θ���������<�/������T����<I�*�'4����z)��X�/��G&ln/���釅���|��TF/EF����D�N"��)��ߖ�����IS$�vM�|KgLW��H�<1O?{7�@���Q�i    ��؀��5�G��K�B¦� p��b �V �%5};��e칛��X ����?��@�I��!����]�<ʀꉪ�3����'
�s��,��L�p�~`��5����D���w~E�t�zz7��S�?�& �*/���'*?�G,O��
�|�v��g�@��J�ߕ h'�'�
��2��cᴋ
W|��M��2m�t�s�ܝ�7T��K y']���G�M����"�-1��*���`�;�S��Q[	�u} >�h'*�[�2	H;�$���zW�-�-�K�E�2co~�N��zڐ��k�6U�jo��0�D�kӹ^��>+��ǁ�K4�Ćc@��..�^{}/k9�.�W[�d���y"A>T��bz����%����K"�3	�w"�H�ykԗ)�_���DH�b�Oc9C�^����3��U ��{-����mk�)AX��(ar<	q���1o�O`�$�0���/19�؎6Ot�]���<��c&��D�~�hJBE�]��<1�OeK�@މ��	+�?���
���1 �K&r�=��I�ox�5d��!�z1 a':t^d�[W�k՝=�:^L1	�Kϩ�\�o!�E�O�4+(a ���vق�N;��}:�9�2`vr&��;M�[�NZ�e��\�+]�L�q�Gꗗ�}7���]o�]PO���(�oc&�?b�&����:ѡ'؛�1F���OL2pv�J���Ѯh�@UNG��4��0�쉳���S�N���+R'�I�nK@1�K�z5N��j�?X�@ΉIE!�K0'��{z����K3Qa]�.3)��J�������A�÷xմ�,��>���o�-e�Û~5�r"a8(��?�s�T�Sј��d�!�Q�c�[�	M�װ�D\6q��N�W������N7���žz�yQ��r���W�q��?���{��r�r�x۷����lf��ֺ�����]�'���S�&N.�m�KT��׶�k��m���䲊�"�H��ľ��!ۓ_f���[Sк⎊sQ���ytf;��,�}ֻ�L�����y� '�8����Ѩ!�t� ��X������)�!���$ݢ���K��n�2�r��o~����eS.E� H�Վ߭+ �r��X��
�8����]D\��B�Q:0rٔ{m�v���)g�I�5~?�` ����[�/�E?^d��sY�zRQ�sb�.��6(�l�m9;= <'�����t�ɾG,u`�DB��U�A�^т���𒁣�t��w�`9���qs�X�B�عl��̎ s�R���|�fN��3�[{H�L3^��l\f�˪<�q"@'AQHB�=��Bx�l�߬w`��(	�L�:@o��� z>ڭ�}�#��e&���po� q��nbސ�w:�����>g��'�mb�/��dB�$�=�� �e�Gzh �D�R}aޤ���WnO����-�v��Id���pJ�wl�<����7'�F��b�J�n���Uf7&���������7l��AvM$��x�} ^+����rM�ӥ&̻�l���6��T��E5���Vo7���,�}�Y \�&�םi�꼊�n�d�^)�i��I���vVoU XA���mE|���6.����>,О
�k"P$��!G`_%��O~��4onu}��m>ˋ�:��Po�1=��mTt!lhM��[��N#�]v��_����B,%�Fގ�
0k�g���n� �VT�ԭˉ�ZaR��c��Z���Mj`�ľ!��β��L�I\^����O�xE9fa�l��>�:� �V�'>O �D�L3_&@�:s�9r�MT-��A���Ô$\.W��!Af;�)�.z�[��.�QtdB	�ڄ�x�yai����s&Z��l�|a5r�k"O��
�l�����.M. �DM�H�;(�t:��oFH91H�ߚLhҐWfz׻���jyi��*�X ���r�����-� OWE,ɑ����
g!�v"`ȭ�n]'F���U����`u~N�%Ա*`s�C�8g�S ����.]ާ*�	ٰ�%:鴵7��}n�ԗ�aq&�෗);���
0r�aʌ! s�)[�^���Q���T�ȉ�b/�-F �� ]��<s�]rC�wSF�w���*��?������/o�C{鹴�й�"1v��_�qm.-Ixi͹_��+����~8qb�L�9?}WT����~h81���zd� "�Se7@�D@CH�����L��oC������M�(`���7��(�.��x�_K'R�ܕ@Չ2��o>K�����@҉I:$PG"G|� 0W)�����2���OE]�b>�$��l��o!���M�{*۷)�f�pu�@2R�}��K��(�(0x~��N$~�� v�j��;�����D/��.���a�l�g��n��G�X�b(�˪eT#���A+�J�SG�@鉎�I7uvHO�"�DdO\��:@@�n^���%z?��%��G��>��8�<�'���-P���<w�@�U&��9�}U�>��3�_����q^��K�Zq��[p{>k���- �Q?�~�	�_WfI�zm��E�^X��b��p�8�jȇ�mN�j"�&3��'�D��Q ԍ�}F$TR,["@� ������<%�gyqk2�Qb�u��	[�@�U��̌���Ͻ�OM��>��Ѷm� XM��tC���U&���A՞��P���7�
�_5��e{+�����"����!�	VnM�w�8�>�x`��S���t�?r����k�U��ľ��ɍ��XU�И-H?]K�E`��:�Q��ҥ���=�q��
;e��e}Uo�<P\�/9.q�٩ �W���l �'d�������(>��O$>���'z�{:"	�8b�P ��t)Uֹ�GM��wYx���*xc7�����8��p~�c`�*�,N����'
zf����e6���e��_F�e�`M�'\�WZPت�lk
�ѩq��/���k�s�E������`��$��'�X;Q�la��$�C���3���
T�(�G��u��-�s� v=��<��V�cۘ^��n��1ˤ�;m)�e�|歩��(���F�;w�PP��ϛ�@V�&|�ǀ�.�g�E��|a�� 1(�]�{9@�y�4�����xv~8�Rё>H��J9�e��?W�}����UUS����������h=K�[��k�?$��)J��m��z/�J�O�C��o �DE�2��CT �D��#�7,���eE1�
J<���WU��4� ���,~J��
`�Kf�U݋꧳�V�E����@��Kj�	H��>�;���IQ�����|R�
h�����9�-����(և���U���*�O�$?}�g@�Ġ!G�l��>��tkL��R�1�� ��O�����5i�n@3�4�Ds�d^3e��O�����0�@�5�g�Py�Rf��I�x�)� x��׌�	/���D2ؼ.�b�l���WV/����e]�H>Q�I��|���~th@���q�S�� ݓ��e	�{���*kؗ}�����.	��>���}�IJ���pO��$(���T��$tj��A66xg0�Aś"�i@�5&}��m���Uzzk�U�kkWJ�nV���Aw�&`|��7o��D�����dO����ib��烸itۀ�	��8����_���II��u����\�?����� -�s2oF���5 �t��r�龊Z����Sk:���\�Ah�F'1��%��y5o�@	R��3nJP$~����(^�5��MD�XW�R�j
�%lt���
��� eHP��M �����E`�G�-؟k-۞Ĳm���Z�/��P�ӟ���L� ���빲��B گ1I�>�?TT���`��
��h@����t�5�W9��ײ!9�t$��}i��a ����/'���	 ���zk2�ɟ�c7 �D9�G�[>{蜂���r���u�P~��Je�ט���9ؾ����@��y� �7 ԯO_�     �_+��>�� ���b�{3 �M����	(�h���_�@6�6�cPʠ��`�
��5�����}0�M���@v���+��,�~x		��#!��ײ�|A� l��;�M,@Ť��+�l�z��`P�W��D̻��5a�vY�W^�Ӛe�K�~��K�e��^6 6&S�:�l��u�!�?p����{oր.�׾ca�(Q��8�>(4V!�QB�Ɂbu��b�R6���6C_��'�1�&���͐�oW[�g3{���[E>´�ӛ���)�
�z�Vb��]��'�m�B_Ҿto�M~�d[b��S���B�{E�ZF�ݥ%�Mf9ֵʹ�����=�����ffp��'2�y�Pi���$b�#?�)�D,��ﴙl�2w9������.�z���t
J1�^̫��q3�_��6�y�J@E�L������M����j?���K�����rv�}����-~��K���L���?�e�j}�e�}3��E������mJ8���j��2�o��Ѡ�i�.���*u�RD%��|�A	�P����K����PФ>[����U�h+ݘk/+�O,˶���'��Y�;4o)�¶ǿ��_�;���������(a��c}����g��F�=��l��|���]���K)�$
�ԕ��	��߇��/��̖�/(����?����빌
�<o/�\|�)�U�Zs�_����r�򒾒���pѲn�7�k`�(�ȯ`ޖC@%�5;��D$��Ʉ�*�{Ũ��a��-2��W����j�e����GX���r�i
��L��ѣ��c{܏u>��Q�"jY@`��Ǆ����wS+ۦ1��zy��2��g����PŒ��%X��(Į��PG���X;ɿ����oQ@��l�U��OW$	%��i�Q����b��y�2���*�W0շ��R{���S�À~�)��ųC��
��e�bt��i[�Kg�=r#�#ꑇ�y�������N��&I<_p��L��T�St+��?�w��^[�=ӘE5V{%�ѳ�~q�Cf�g}�(f�eY����t%�����mKB�5�b����p=�~,E�T�Z��<m�%�J<�V�/��q�]��V*5<�������~m���
˿}��_6_e3�d?<S�Av�#u��ܷ7�f���,���16��� �ۿ�E5�Q������и���jF=2HmV��ux���ZQ��Qf�%jCUC��y� �sI�&�E�[��4�N�tTa'�W!�,�N��X�b$
Xr&�{(���ꑅ|�S%�|�V�;]�r�.`�)��6w��9g"��na(;�J�7!E�tb�,�4��8��@֛�����w�:\�Q"X:�S|gfQ8�n�LG��A���v�����^ې�k`r�i��1�0N����� ��?�p�����-�i�aE9ڔu׍:1�/o}��H��J��	W�:uϭW��?���K{Y�\(4_,@�ɴ&S�̗
sNEi���Q5c�
 s�D��UЛ3��ews��\`/|�GF���B����B��'�_�M��s�=+�o�w�sj��ob�����&�%� q"F�*�Pq}��4���L/Cx?W���hrk��Y��US����e����-2;���I��[-ЏP}�v��� �=����@x��O!ّ$ϩ@��=��Se��8pyN�P���8 �DE��L����.�ۚ��A�9U��7's:���۫���><:�|A=��[�^}����������؞������z���j�B��DU����$���d��y�E��>e�>��!��|8�cR�[7py��?�0M�7f�|�Z��w��9H�9���~�wb�@E���wNU&��Z�Ω
߸�O�us�F��)�X�bk�P ��:;Gш�;�x������a�=���8�n��Bub���.9 �9S>����1%O��@x�Ӣ�"q���Lh�O4��s��~7Ǡ���8����F� �9��و�stM�ip�X�����.���O�896�@��V�P�PQ���g����>�1����	������aB�H���_~2�����2����{�g���m54IGǳ�<O�3OU���b:4��) �zS�ָ� �3eW��z�5�3����<�6��'�����(�C~�ѫTTy���S �<�xޱP�t�=@y^U�2*H=�:���Z�7���=O'���B(OȞ}��{� �דݬ��0P�gր�1�*���'��~o���K����zo�xg`@0��T��������%(��=0��Ik�@*?�x�ž�Xy���LB?�`EA�KRz���e6�\$�xy@��n"{�B���7=�y@
��1�R(*�z�èϬ�P��n~^���� �CϠ��/b�Co�2��=p��.�<7p��0Cm��v(��#�n�61��n�)�*b��� ~���%�|�3��ߟ_��9U� ��|��+7|�~;_%�u� p��t�Y�^š�"�8��  �g��@z�@�G�?]��
D���U˨F/l�np�O�pkvRP_�.�?��?��oB ���p�7����LƷ�c������V�_o�)�F  �&��\�� �r'GE������L+h�yR�觛R��~�1f>�{ �䄣�Uwbg  ub��P��nP���n�@Q:�+�w�/�+���H��!�~w��a�K/m��A�?�*���� @�^�=�Պ�8� "�UՀ)� |��|��\ $Ы��9��� ;��h@]c4A�����_� (H���� )ا������
zSyY�$�(�,�����=�����,��[���7)��pA�Ju�E}�z:'�t�����\�W%X��؀�	hw ����5`��)�l���e"���|�U��OM��S��-��6����v3Р��Ҍ�p�`J��nfD(F�{ͷ#|�~�>PH�w�4 �~>�m��@�Λ����g2�z@��7%��pAUœڻp��vƹ� ��h} 	�� y����  ���5(�NL�F�ݝ��0z}��/�ڷ���YPQ�t=?u���ɶ�s��v�%�f� �����g� ��YW3���:���o �I��z�':?1�C `/x���|A���Q߁U�*~�F�[��.C �*��mh�`���n� �����- �M|������g�
�;���>F_�`�zKEc�vb\_����/ c���z;�����m@E-�S���w�W��ʞrO�.D"A�v� ]'��n�)4���4������་"Z�_�[�^��͏3�����$oV7�uA�)L���$��S- v"���K ]Tt7����������K@:'>A���劗M誻OA4��8 L'��O���t��<��@���E�N������9H0���߾Ҟ�_���t�L�f{۔B�1�$�S�����e�}���*:�m �*���k@�z>�����׍����Jl �]	��G}S7<\�"����s�mEE���So�K#�/�( �$��ζ��8�r�ݤsz_�ܵ�q���[P��\*�ob�N:�ɓ��a��Z�7� ����8��hJ[�z���4� t	E��{�M����$��Z�i�5��C�������� 4.�j��@������ȉ��q�|:$�P�j��h����q.��(�skX*�щg�7pp}����Ld�[h����_�&�D��p(71z7	@����u��-��� m�kyA3���q�n��eu�Ul��x7�x��K �/F��9��m���̓�[dr�Y�0n�Κ��Ā��mND=�m��I	%���{�pb��j.з�p����o� �#o �D@���~���E&[����,\��Ⱦ3�o�F�P�-���&=���]�l�D`    �D�$����k~�r�!9����PN:�M�-ҙ���S�8�h����oW瑷�#�k"��3xo���E�����M��%��+����B�DD	�c�4Ҍ ���!��l� ���TLv� �&b�;�w{kbRQ��"0j}!p���^�*d��K��E�9��������$/��A �j���`X51O�c��"k���v@�E�^S�ZE�dH�X	�e��?q�qz��E&���w(C��+>�q�\\d��F="@sQE���\0��57-�2��~��?���U\�.�r��k�� �Е����#A���O�}��@�E&O{�T/&M��;N���*�F �D��&>[s����d1��>�^L������O���������mx�/��!�GؾHSW
������/2���]�?�%�KrZ �M������hH]��,i��VPYAS�N�@�E�7����[���o�/�ҠQ(�bݐ��<� F�R���z���	���W��q@�E�ұv{�/x5}7�[��n*@���b#G���B����5����V3������mp|TClQ@~����COD�Oy@�D�Mk5����8�R:rn�ڝA��I��:�.#��t<�0��Ş���e�n�?d��$�N��.��z]��%�}ѐ�nv��/ҙ!g�����}b_�m���?�;� FS���0�R��G)���J��!���$�Z����U���#���*}�3Ml�l��D���~k�N;����)�V ��d]G�o�=� �'��'����_p5 ��@����_с�)�B�7��
Y.��r�H2��I�ɱ�!Ȇ%`�#J�����`2�J�N��`���)�Ǘ|�� L�|�x&@(�;��`����0旀*L*ҕ�*p����<�Y�&Uʭn¤J�G6ſ4���	�A1��yu�U[l�_zt�D���!i��@9+��G&�������"�ޢs	���#�"�훮H�Dg���)	����Hǝ[��ɀ$*&jC2T%� ��IT�������7�`E�P@����Zz��Ј��;�G@��J~ c�hF-Kɐ�,-/��%���h���d� �E�������'�ۙ �y�q]j�s�L.�jҚN�-���r�_�Ϩ#X �*qu�� �t>~}3"ꐡ�l2�'�?�`)��>��%@�t��ʹ�*��w�@ ��4^�'��R��H͝'P�N��6ƣ��C@~��c�O�~"v��e:���	�]�ɇ�	0@1��r��ހ�K�����^���f���L����o�/1�MJ��3�
d�H��9�cѸ�V�m �':�r"�1��K�T��!�{b���	8��"H'߭P{�)*m���铮R$?b=7`}�����_*�g�N��u�?�F��{˸(¬�P�N�NFb ��b+&bAC��y�
�HX���ꑟ�I-���)f���*,��8���N�vL��
y��v]D�D��M �b^6�U��\��C��뚖��\��pCm�`�y��8	`�)�6 ���~2�] �G����	����R�	8����#  E�Η@zH��SB����LȞ��:krQ4bLe���ю-��v/��� h��5
$�(��%g�1���~�w��{U/��oA��BE�us5r�r#��������'�',�� �ӻt�>�&�׎��*]{j���f&� ���BN�.���/l5H/��	8
p?j~��|��z'��E=vR�+s1��̀�}�+�[��we����.!E�O��=6�O����ms����n�#��.o���i.��u�k�JXk*���_䜿��i������dd���!� ��g��D�p0�qB���,�9º����`]BLk^���e{�(�#��!���6(��*ɗM$߼E��iW��˪�d��3�}:]��D�O��?�f �D �U��"!�L���UB��ڜ8t9�-�N6&��!�t�(
$�����'?�-�������_k.3��H����`���/��Q�E>��e�c'�d_9��u�=������~b�LKL�����8_Va�[� _��WJB�d�}+2��w��� yb����nU��u]u�es_ ���]���5nߚthRΫ7T��D��g����Њ��,^60o{<���4sk~'jtګ��4O�[j��]��<Y�ׁ��ԭ�����$��9w�)9�m	f��]N�B��I��(ʇ̻�:�ȋtY�2�ϸ�5�(�α����aﺀ�
v�A��l((��3 Y�;���`ɀۉ*���]C
����07��,��>������p� ������F	X<1���H�� �l��^ ��Pd�G��D�@���O��������݇�SP��Ni^����sY1���ڣ�r�����JO�xy���d+W���|�~�b������(A͓ �=Q%?^����eUD�.��e#L]�u��<�(/���N�>�ud��lKc����Bd}~���A�{�Dw ҉I=b��u����������u���o~��]qn�g��K�aV,���/g��2Ž� �eN�#;��(@��o��˦�ɳ��]n�K)b��N$������&y�]�J�,̵ʶ�֣d��!m���潄��#��|D�?�m\|.����R`N*Ju0��rݸ;�����gY��˩��?�?\����g`�r���=Pr}��c�@��.���H9 I��XWT�#9 rEE���X�1��t.�X���+�5��NN�����Y Љ�>��
��ލ��������*�|�i躢���M+ ��ZS_T ��,����bv���B��j�(�㉎���ĳ��l1�	� �'����] �+O.���y�A��u̝�I��9���(��Pq@ub�_ Pu�����+L5a� �������b�*��e�e�>��� ~GM
�g�N�g�s��]	�,,@܉�^K��JДK��  wEE|=q�(���.�tx�K��^��^�r#�Ǧ���n>�*�W<[��qC}u�ۧ'��+����;�0 �����r$ĸj
!����I�%9�d��Srٓ{����_B�^WK�� ��}"!.����i�@�[��m;�z.1�M��k�Pެ	��K0����!��
��'�ˬl@��8Y�ɼ� ���)��p^sԣe�.��6��3.ӊ���q ���ئk: �'*�#C/��D����=�Pwk�܁�	a�<�It)1tj���i��x���j�w�� �Z����C����Ш���rGe�����w�E�g��U��{�x�QK�=N@�M]��P����<O��-����W� �D�0w�C�w��mު��k&�ϧ2�ffPvr��~��ԝ�es>�;1o&�yh��'SGx�9(E�T;����=2>9��XS��q�>*h�<���^Ɨ��n�Pv�!�gp]��<�������ߖ��
�]3��tMW`�DŞo��C��k��XO� �����Y�[�\�c�z�%�����?�n�CPw��x�{�j��k&���J� ���k:���ќ�������''@�D��q_�l����P>�G�9�Q�R�"��m�>m���Lu1@މ�#V��8�6,OO��
�fJbF�h�𖒋E �k.@�����%�r��!���w4�r���c.t�=�v�!w��"��=G�ju�  O<��ov;��Ĩ=����2�pԧ@ws\����V}Ca������*���Q�Ap�wZ@�D��������l����P;@vݕ��ۭ��,Y�8�u��zx�HȮ3��XP��:pw���ɬ����g��X�L�\ez�v�Ev��Zt� ��)�6Ł͛��5���yGiv���/>
�@�M�W߶t@�:����\�7b��P�6���Bt��D�̾JϾ�b_��Ёܓ��;LMZ�'����9�zb�.M�9�zS��i    ,���'��rn)���e�u��������۾/h�~|#�L^7��s;G`��$��'�@�/KO�ޗUt[��ɨ���u��4��@���Tr��׳/$���ׁ���+):z���w������K��� �u&E�&أ�z���_|�܁ݛSnE��O=�6۶��8d�}�;���יz�?n�����2ЁƳ��8`�)��C��OϼN țJzmv� ��M�o�3�x݅�Q/�z"H�$�'ZG뎫��T"��U����9�;�x"@�� W%0x�1�E�>����&Ǐ> y����<Q��!KS$��;}� �%��o����G30�nJ�G�H������#5�z��R�( ��oW���uW5λ �=1z�9�CQ��ŭ&Y:e_'.�K���̰�7ÖI��.]�������n�._���������\����9���GZ�\Ζc��0��-�=ّ��M���Y�Q�~ئ�@� m+�;q ػ�T�@�p΃o\����0��ƖS;^��D����~�z ;�ұ�_�vWIo� ����%v��V�:�|,kmK�E����d����}�������0�*�P���!�댭���u�)̇ @%��!v� '9������%�&Z�ac��#
�\�șK@>�� "����7 E�q�2�v�m�]����;�
(`ϋ�����aJ�< �"�~M�v%@��"|%Vvq|��N'��9*vk�P�?�B���d���ؗ����ށ�����i\�Ju�w��QЉ���'`�	���� �����$ЇÔs�:`m�-(�/��@��/�'WC������;� ��&��9 8����� Qt�x�7 I�<q�Bq0e~�N˗Ncs:�S���#������%��C��I*B.V���Qeө�e?�%�%�y��I�&m�!�A��ל���0�P%���E�P�*�6���{�����TC��q #���#G��k� �p0E�}�
��o�{GG��+���r�\U�����4��; 8%�jF[� �f��,��<��z���Pe:��_�\u)�W��J����"V�GC�w�����\s����D䜃�(�e;4p=����=��:��O��yY��@$��Igb��@$0���PQt��z֋]��ݲ�p��;*�%��~�yCJl*h vqT˔W��`���.��'��3�. '�����0�b��z�	� ?�v��|��PA7��(��=�2���w |8L|�����pV������!�P$Ȕ6������~�2�P�����c0�����8��9�<|B��}�;�|��� �pЉ)���ѿ��| H(�W��$��SG�������c��3�fh	�e��ɉ��6Mu` ���WB ���E�b�ץ���</?�G���	Y��������� �Ot/~ٞp8ꗒ�����"K7-��=Y���S�b�� �g3��e �WA���]/����@�D�A7k��a�0��% �sA�K X?�%�d��C�������tjڐ�e���(e��_�o
�π�%Ȣ�d_0Ty�,ο����w\o��Tv�����H|���KN%;�`�5���31�_D����h%s���XL��o��b��OB�#*ӥ���.M�ʴ�2+(�I��DF�W�}F^��>C�5��!���� ���_O/&�$�+{�'�j�σ]1РÇ�"J�� �.Ih���rFe���v8
�4�_�}�Jv��OT�8�{����z���'��L�oB�" +?�O��Zh�,f�-��_�E)��#$Q�n��/mѳ'��&cA���עTQ�w*)�j����ƒ�xbG��Ob~\Z@��ڼK����c�:k�UV��AN�r�;f>��_I����I���V)���e��tQ�h�S)e��P��>���8��2Ջ�>��]!�ˌ��7f\G��iA����5��{�|Zq�x�L�|�S;G�{���$p@�t�29t�%�Z�qj����+�{]�v�}O0��%�9��>^�
rC��y9.������07 23ؒ-t}���P�ZZ�C<��u��&�0o25儲|��Z�%P�����KD�۟=�,3���Ѣ,�pk<���E/���&��U2u��QE)�@�F�.���"C���>����\�h�����t�9}ҏs��Ro߸��N��jD�Tߤ���$�^F=2է�kA��lc*٘g�am(G�IT{��y�Gj^��^�˱i^l��̋L�z���:�>3N?�<,��¤�X@1"�:�Q�~���YK�.�.�t�������r��zFC�&�U4HǠ'RC9C���N4�_��[\�1?y��}κˌ^�TRs��2P����:���>�q�b��~���V��.��=&0X�Ȫ�w��4H^��G����UE����i��~�����p�Z�a01dO�{ EL��|���q	����Yb�����F�|����N]�U� �q9�����(�1��/\��<�%����Լ|���M��3B��O��_?W�'�Z��Y�/󀋡=7�<}"WP!�'�V5��L�>�I{��sq�u��}Oj�hp?Q!�ר����/oli@�� _�t �/05��\ �/��L�Th��6���>*6�L�a�ύ
�i �P�o%��Dc�7�f �0DK�ù5 j(F/S�(�Ks����F�@&����00���i(�(�)��:u<�&���n�� E�|�·qiȸ��2��g�n݀���vGt#����[7���l2:. C��U�VP�.#�E�4�}����֮=�� �? ��g��z�j�w�$�ԙ) �އ�Ў�U�W[L�;S1_��'4O�K%�xǩ�?WT{����n� 2�@ߪ8����c9�(�߲��6����{� 7� 	L���<���0�
���: �����\2N�@E�A�c``Ei,%dYjy���϶�}�ۺ�-ʘ;�0�"@.�;�X�Z����  ��g`��r|����ʹh�i�2�o�3��X����]����Iкm���)��0B �0T>��] +��8k��B�OV�6��"��m�Bx��1 E�|�f��������nh��l�G�_���t�� �S�}f�.c�	Cs}��+����K�w �0�_�V�'��ՌK"�QL�G�%�\?c�:�(^��(�lMql7�|ݝXP��fE_v��b6#��	�|p@�>z�	�α��K����.���N�R�S�Z'��	N�2���9p���TNb����,5Ā�$�;��0����<���e�}�3P��U:�0�ڥ1tY���p�r��{\���;��a8������)�3����0x*/{� Cѥ�e}�2LY�?�h8G�M�b^������ ��`J{�^u��l�qO]lمL�d_w���`�6!�%�:�MN��1N鴴�$��볬�J��Q�vgd  �a4���p����%��GL�E�^����0CQ�<�S� @E���ȷWG �f � #FS=b:>� $����e�m�pZ��
��._�9�Z���� h��T�p�}�P���e軎�P܃+)����
���(���uP�ָ5L�o���,�_&#���E?'`�
�yҶ�z�7?������y�Q��7�h�|�ե�+�"����3@�}��zY���J,w�
�?�0Ѐ��yn�ӝT����`c����g���`��ACB�h��)u'�3�;G��e��;w�{��ګY/�"0z2i�Z9ʷ�������܋&֍�� ܋�z�T�e4�ȩ�� ���ۅ�E�^ې��g-��s�"N��"�5�u{!/pP�j��P֋tEC�4�-P>���;V�=@�y��՝+vOLҟ0�)�^�S ����Dő��mUA=�<ї	p|sZq�:=��9�C{:J8<�}*���p%�MH�X_�X����
9����    &>�Y��_4�A|�u ���r���#j���A]9��k������[�Y��H#���2�<yJ���iRM�$ ��qG*M��(���d�G��ES��'�0}"�-#˾�0�/u�6ڱ�*�!�b���MY �����)P{�I�{C	GRG��wr�I���'݇j�����TSm��|�#l��m����m�A�@� �EQ�`�/2EZ�{9`}"GW� ��m��p�0el���{�
�`�3�� X��$���!; ���7�Nn  �
�����W�k9��a9��M�c�P��7���B�����Z��_Dٸ�s��od勀����s�G������=H���~a*9��wQ�?�rat��(G��^�u��� 7_`��ɳz�oo��������n� ��˹g �雕xS01�y��g�)�JHPt�*hz�$���k0�`^j�H��%���� �KL�ן��p_�������K&��b'`�f3�W�?�MA��7XʪN��Q#�M��ن�� �]�]�a��:�ʀj��^�_�ԛ���I��z�bϦ�.E�󒣰��S ɳu��!u�$������m���R<G����̌���a)�UL��S�n�ML���h�}�r��Y�}��J	�O�����<]ŋr���K�E\|�k*[��8��&/��x)�y�I�@^2Uԥ.% xɔ��9�'���/�>L@�.���n�NOL�)���kϗ�|@$�iY��)cYe5l5|f�7��>o��~�}��"�7�sok�ǲ�r�=��v��2;���G���A��?�� ���Ȥu7�L���Y	���M�&��<Y��<��
��#����?ڿ�0��
6s�A���� a�T@m���	��7���shX,�<����֨R'  �b�q���@�
E�~�d��t��w�% 	��g��� ��6�Ο�ɩ��}�Eh�T	�+�J2Eh���e������©���3��"A~Tr�`
���gp�ɔ(M�f��C{mj-(�?3Af8�rfq�9���~�[�{�-�S %(*�����/(��2	��9���?�|(Fd�k;	`����/u@��L��i�J$eȌAyd�
ź!��+8CQ=�̏K����4��픸F�o��+=U�0���2w� �1�w�@��:>�:���r�� U(���Y���|��P���*@�rhp|��+Tb�Xk��d����KQ(��������n��PP�ٕ**ٯ��!�s����XKp�_��?| �L�_h�L_�� �d��zD��#x5P0Ѡ��|F����j`0}��n@0Ѡ�>��^W=���T����-�s&0����.P��\�	(`6U�}�H�`v�C�������3�$Pt�:/j3*��1M{3ڥ�Ƨ��6��aJ,d��G����U��5:��d͌���o~n�H@��p�В��� �����[��̗5�}��/��� (�39(��Ǻ��f��Ӆ�K��`v�J�]������	T`���e��&[m-.�v�`)�}��<S�@���3Q p*���[|D0�A�J/(��s̮��l���+��:�V�8(�����H8.�Y$���Ł ��Myèq�/35QO2`��;�Pz�wm��m��q�2@�������h5�	9����`V.{�0$�߯#���>��N;�c 	{�7��VO\[OF[� �u��3+����-{�$p�V��(����}�< ��.4S�w��j���  /���Xd��)%����F�*����2��̼ ����ɀ�e�D�/5 �fK�:���d��w\-ۻ����o�2pu��1g�v��[M�Pd����:>r�]��t��۝A"���τ3 sb�Q���L�M8��7'�����K���+E�M8 �-*O�M�a�h��ߒ�1�Q���g ���I��F '��NwOT �2S���	 ��&,��� �eS9`nQ 
'�g��s��� H�r���R��O�c{?��,`_�a,�r"g(0��H9Ѳg��6m�������l�����7��d݀�eO�1n���5v�iG 粃�3tV�8
ީM����{� ��D��u�3�ss���������5�s�OL�N@@�2S��ph�ω��R; H':���7A&�sb���:h91jHA��S?0ss�,�S 4]6�g�D���e����w�9rk�@����@�ʗq�@�hџ�uw���coq��ܻK�~κ�|Xe�K�a�$���?�>]Y@���=ݹ$`�A>�� EWL���>g��B ��
S,��� VWLuu��� a'Z��T�^�8�y)U��R�#l+�����O�N�_����� 47������氳߂�:��"Γx�L������� L'��I~�!@ή8��ޭ iW�}u�0x�L~��FT5@��u^�޹`�l'��]�K����~:�s ��s�)��w�;f(<j��=y��9� �lF9w����e�]�OZֳ��J��jG,#�E�� ��3OZ �����y�E���*/@ى��֭/ ى�#�7�g��=���x_ �+�J��vȮ��.m�N���&�n��zp��N�E�l��&��q������w�B��W�w�=���+���ܖX^q�@s7x=Q&�ڬ�����l��+�����(O�;��?���}"}&�/�Eκ�D$��e���^r�?�>��9 �
SW�������wiW��+�l���~�T��K�H���)!���+�<qto%����
|"��P=�x�A#�z�Q��Ђv�"��(Y�'�Sez�6D��N��3�u��u���sW �3��7�����I9���h��O�v�xb��U	^~Z �����g] ys|9�Խ�W\��Nl��~E� �����8�B��e�y����_ ��5��PG/r2����wH��[�D}ڕ���ۥ$ z�T�ݨ��+�x-B\&��i=�*��p��KOLz>J� ���٫ �w����vF��uW�u�P q7�ÿ�ѢO@�
�<9@x�ï�r�Ƞ������zRP������[ �+�����<P��x|]5�f�� x�ʤ��m�@ԉ��B�Z���nv~bWMp� �����Ȼ��͵^wGM�O�@�USM\�8P��U��)V����=�3=�* vS�;��U"���oY���4��|�N�Ӈ��4_���Oo2�� q_Y�!�+���_��U^����5T�O��vP�����u�Z(HV��f`v�T}T�*�sb����5�d�����'�>���sq�Uμ��n&�:��_�Ѥ���+J�L)9�`�=�9Auv4��Һ�&�;f�lZeh���i�&�nF4X���[?ڲ�q��?k�C>?�?�� S��J�o���5Q�K����ٽ�|�@��z��&[5e�s�i �U���c`�D�SQ�fT�[���]pk0���ӵU@ת�уW��f���ON-����=;���X�V��J��S��D�~�a� V�T����m,]�QX�V㺕��|�����}1��|�L-$z�Y��2gjG�V2�>��UUĮ��D�P��ɢ`M��:a�m@�j�A�� �M�_����U�h��9����ȶj����4[��@���e�t"/m��f3�Zx��(;nhԦ%��N����)�� 7�2��5Po󆴫�+Pn�CW&�O����|�w>`��6Z|��?K�``ۏs�8���g^S�do��a>�
@\5e]�o� �	z���?`pb���͓���\�B�p08���5୚�-C�74���m�3%h���W4���R����	86Q�#ľ8��={�^B=����Ռ�4\��y`��|^��B��ls��u�K���E��s�}�}7ˁh��`    ���jJ���D�6�{��?`�����7U�6q1�S��b�tf:���MT/� l��1�P�6�����r�"�rv�
8��J87Q";wk8�9�z�?�V�jb
I��l���w]���++x�� ��� ���|�RW kSBE��	d���[�M�9�����:Y6���v4�����q���g͑0�ۘ�Y3��'�L$�uh@��N4�
s� F2���U��豔�dj�e�{˲A쟲oN�zi�DBr9~n�_A���pk<��p�\��ٿA��z����R�M쬙�Ǉ�@�h�������L�i>�y�ĝ�$mv�D����bvf�z�h��M�3�ٳ �L<#��}ŗ�6L������8g��$0Ҁ�k��x91ȿ�qD�he�"@s���r��y'�r�2���U&o��QC�Gb��5�G�@�5S�X�A07��x� @�Z�|t�����KG`�Ĩc�d�*����Po����H7�o���N] �D�}ͨ�OG�_��� u���}���[c*Mz�.�o�Ig����19̞ukLiY�L�M���ԝ��\�*���u���HM|��s��G�����]j��� �a�����
'߀n��@/�ÝU�gk��'����Kđ`�V=�͝�Z�|}m�NF���[�"�C�"�Y+S6^Y3���ӻ> ck���/��ۚ	6|��U�^7��D����� ����T�6o ������l ���!�r9V`��#)�{('���N����Ŷ�1���mk��۾�>��5��^����辟�>g��!X���/���Q�~�h� �5S�'������������߸1n��X�n�9Ѳ/�#k �C��W q"`M�x 9�0T���t ��Q�����S�hH��ܴO?1W�
��6,�u�+Y`��:��f�'&w��P��Ƥ`�kN�y-�{ �ob���� ��Cm�[�]��ՙ�LϿ�$&������@X7�r{/`���O|��$_����	���ZjK
�9���7�~d�J�S�zA:Q����;dr~7Ԣ���}�Q��Q��SI���r�`t ʺ�R���Xgr=��WX�2iv ����p1�rd1���B}�3: aݔ}�{�hX7U}�7w��D0��V��r,�����Cϴ��oRu-�˜��n�)�]���� +�M%@}�5���jd�!�湓��G��G|�8��4�M��=��=dIq�|�vUw��/f��$������
���@�ɹ�~�~A9\�9 ���uG�K}��2�kZ�z�%��Ll�~V�>_n�Wq`�Τ%{x�܁�tv2͑4�]�.��*�a����:�a�D��� .&�_�y;�\�&����&�;��/�2cvH���MP�玬�&*����t�l�|#�~<M$>��W����I�34Y���[,���Cξ�6��9ԓ�j�W����Ze:ɴy��֋%B��7��z!��ص)���f jbݐ(���n�8��Q���R�#q�71U6����>��ݶ-����)!��� �u����֮��]y����=�1�x�ݺ���% x���.;��ľ�b�>��u�db$J��N9�.�o�D!rWR ����Y�����iI;�k��Ѩ���5�*�3�:��ؽ1�����.�M�)�I��]&q=�%hI1��笻D}�>k�?:Y��}L�6' W�Z��d0������v.�������m5l{[
*�j��ԇ�eoL�tm��-���I{���� ��(�?�9W(�j���K�k���Q'�l"`Ϥ@�k@�D�q�e�ȗA��/��RP��ᘞs-Ev��I�Fv�4������Nd�`��+�p�TJ�usX\���[���c}�8�N?���g��v͵l\����$���` ���-C5�G�r��y{���M�9ӵ�X�3̐m}G���vH7ǅN"�M+��L��@GT��&8Lx�A 8��|��<*nP���WN� �*��í[Q���PB1o���Ӳ_z��'��B߬�� �PV�:��z]ŕ�Yji�MUv��#Q}��So)Іb���0 En�� �8�#n۶��8���=�O��T��Z�<�`�:�q@m3����D��&]���������:[1Ms���d��7���T�Op����	��� ݞHD��n��d⠱A}�ʥٻ
�+:Qt��6j+Z��p�K`E��W�(����랺�&J��~�������j����6F7 =�D�������u��p�^��QQ�L� �O�Ys%����Y��S�g�0`�#[r���Z�7կ������&@�S`z��!G?�]��m��|�5���ҭ�(戕ԉ�(8>��M�(h��-�C�n��[>�����_D��nF���lZt2�;���(�Ֆ>
 ��_Kq3 =]|jhZF	Or��(>��6 �"�x_��]� =#nhAGCX���.p�r��>"p����P��m���ҧ�(g��p���O8L�ޓM(�᫲�.B�E�QuP�� �����8Y��cp��/K�vOC�_�7 =:����e�k�ǧJd_eu���R�j_�U��j�8��5�u��D���b׉s���@@�{��� 
p0Ud�q6������A�NA��[c�5�����@ό3/$�G�A�� �7�K�n�O�i$|������:r@�a�%_�4��O� ����)��~�<6K�{5�`��JM ��1<P�*P�q�5�+��Dɑ�\��S�Ч+��)Xd[ng_?r�c�r��9J�.痱�[��nm �7躩��(FGf�Lkh��lw�=M��r��4.��8��4�/ӗ?L
;b[���M��W����G��b��_�o�9�۸�z�p��L�|�8y�b�����qy����l��y~?���c����,!JJMk��(8��(`ȱ�R_�rDe�;���"
������(eTb�&�T�<���ތz�_aSD�]Z�������#ɀ�}�����W8���ݺ�h��5��U�"�y�s�;��
|ZTuՆ����\�P��ן��`EA��%}�e�uB����|G�25c�%�"��L��V'�8�<_�=HA-J��lқau'��{�c�~�%�(ET��"7:��.���[�,�^�.#�eto+J�/��>jh��n�a�au}>�A���'aq���r�{"P��)E �Y�'4��$&3���ʎ�ZP��ƥ�rE���R?�L��F�bC�w4����y�4��|i޺2,���7�'~(��L�͙Q�S�I�ZrB	򽲡���|�m�]z�,g9J�I"��̠���ǟD�\���x��UQ��||��rC��D+�3\�f@V^�y��W�Ɖ �c2"K@��n�JD=�œ{�JB]G�8���~k�/�2�1�I��-�O^d-�k�VJ7�̮�T�!|�㖆�q���E�W�]Q��D��U��4�Y� x�z@뼓��HjD�t�^�''�/.(�u�uG[�=n!6�g�{ȧx2L����܅�mo4��,D:�Z�Ӆ����K�^}\/���-\�*}���N֜'l�p��&��gC(�˶�b��^�p��_�&�=ߊY�r�liÔ�(@F.wޫ54Hf0oq�_��8p���|��X���dX#VD(AVs7=��!k�����Z��y���%�I�r��*�g��
�z�L~%i!W�(��������B@���(�`�Ȉ�<��ف�-K�,ӷ�R�Ze��窥�y������M�b�e�b���L�N ����R/��׃lk�9�S�� �G	��� Գ��7�n Z/W��\ B/�*{³ 4��ԭW٠�������.�$�N]�VdQ��SKtꒋ���2t$r�7�����>X��/4�g�2y�K=�����U�� �]p�~��@ޅh��zi� ��������͡��`���    N��xԸx�� ��*���� �'��� ��' �L�cI |O���l�����]L��H��@]M@쉂#�3{p �Dɑ��nNO������|\���җ�C9�sY��tc-5/�����/h���ɩ
�^p�X��s��h���Y���o��w�X�� x��� ��H����K_���ոne~��,uk�ݜI�$P}���\3��M���\-�O�E�nX@�y�@�h��2��y��'*��C�J�����_̏��"�d�,`�BaӀ�� ��j��3��  ���hp �o
��P��	8����P�	@b����h��+"�|cl�: ���zt� `�(�_#����P=������	g�wj����,c7:��Dΰ����4��{B���<�����z�Cs�"$P��"��:�'3��g� U�~ ��@�#�\>0yb����� ��/d����2�>G��/���v�#��.�"�Q�K jO���	�^x=!������^�OZֳ���H2	�^%za�n�<1�`*��(h��|	�z�Q�ڼ����M\M������7�(=1j?�����Dᅓ@xb�~%�������nt��[]S��퓥M�������(�� �'r����h�G
`��)A�+qx���i$G ��H��4� ~'�=���֔Kk��[�=��+�<��O���b�]x<Q�V�y������>/~<��T������@D�oUa�Ȼ��t�H�A[�`����_��C��D�q1f��J��n�R����O�N��������L�3'����<{T0���t������פ��/4��D��U~γ�XQ�{�T����B�"0r�	Io�(�h���K ���,u�Mb���IŜۑR������9{!cr?��ŉ��/�Pq�A��Mc ᨞���H�H�9U6���wܜkqA�-� 鵀r���mjk����ϙʾEb~\e���k��z�ȋT��-�Jv�T�8@4v^�&�d��N;@��d-{�eT��~�/ ��q0'�z|^����1�V>"��i�=�}L�e���(A~�37@�hݴ��61H�+vy�&bt�.p �b�/���d�3���������" n����y�ָԳ�c_�ni��$�Y	����(yB������
�x�t�Z2� N|?Y��n؁s���ژ �&��Zv��M� �6;����ǅ5?���E�j�՝t&�X���gѕ�ѽ�G��ʕ�DM����%��M�]�@�� �*�nOF9:3�ښ���GҪ��]������� 8�쵧 Y6��9�q� �b�y2�a��5jfk� +�����,��ı�
�3���ǧ�N:��z�˅��������ViHj��bD��DːU�s*���y������A�&��N �p�]'�]Z��x R��$e�4Y����j�	�(8�mn�&v��e�29�I_K����⾑�[�mєN�4?м���	�l�4��7ж��E��� b����T(6ѣ��=�2�t����$Zc�>�kєq�(`�D��Ռ���v/�Zd>��& ���:��# l"g��<|�-��6n{�-�$�� ߖL��ȩ�[r$��7 �D����vVC->;8��Q���p7�︙&m�-�>��%`ݒ�,*q$`��?��GZ�,����3�3���|�B���I@��I�<����A�ߚ�J@�%���.�(��W?^�����_
;�r��a�r7	�9Q#�|i�&1��o%�L Υ�~9��FTu�x�u(�H�S:=`v"�ݤ�	�9h4K��JN6
O@�%����@ ����֞��`�v��D]Jl�s#�������ko���.%���7\��y���}�ʥ٧ow� :1I�JoM6r��� F�\<�}*�Q�����=O�����dJƺ ����'4��	H�d�6�B�v�Q�U�_�>�X�0��=�w	�;��.��@�4{��d�5^��ޥ���Ȥ�����ғ��e�A�D{���z�s�U�G}�ݗ��c�@�>���<�SP�/��T�/�|�������Ʉ@rx?1�Hh�G� �%&�#P2�6 �'�v�������~�+�/�`0��y�/1	��VQ���[� �M�\ ��OG-z�U7( �ľ����h�?��9�t�H�Y��F@?1i ����]T[ �%����m ՗T�ڈz�!.)��U话j#:�wl���?P�q���K�'H���`cơ�/�Y����b���heT��q��+h�̓������$w-@�D�M��(`�^�G��d���`���m̀�%E���@����=2�'Jl&Ļ��� y�OU �}�g**�%-�hp���zm�<�{��;q�{���l�u	�)a���'�.+Z�&���M�������86��c�A��$9��!�>���e	p�i�ሼ.p=Q�/��#ܞ�|;-ilO�[��a���ņ�QQ���V�}����������Q�ri����^��*�.���;{�{����<�k3�z�Uh��m�=Q"���͊(f�H7����9{�e�)D ���˿��.ԗ��m�{�����4�g������a��>/�R�Ygn�����^�l���7��s1�lʡ�p��˦ҤOqh�ٝ�S��2�V9c�YOT�w�c����>�l`�4p4�<�S�O��Q�%�~W[�j�}���z$Ϧ4(?1�xQy;�;i��� ��qGe(��_6�j���/3��`>��T��(�̐h�O@ ������)h���wg��I>4�3�Ф��,�s߶s>B<�t��6�޵��g �D��H��lJ��^���e�Z��r���L¸�w���~6��(�)Y� �˙O&u���t�@�w9 ����#Rjv�SϽt��������ѷ�"�����]f�}�#U �2�'퇥���$�q�ߟQ�,L����No`�2�����gjk��<1�I�͝P���-���\^vTg���<1��D�NzRd����G�1px�y,YO7��z�:��2��w0}g(O�;";���K���� ��MX��/���ל= z�A�M�(h��L(H�!R73 ���",;�����&��2C�'��2���$�'*o�S�=jlݓ��l*zJ�^@�Q
N���-)nr���\J���b^�!��οhC��l7��  0��*��)�|�m^7 퉒l�q2.e	[�j�^+�:����W��=�%�3{�:��/��>.]ɾ��=)`zr� kE�y��2������^6e0{�J�l�7�^� �'vof���b�D�tK�:����qO�/�>z�E@���x@��#��Y��W�:U ^���uKRO�� n��xb�L���M@扪�)�����+��Ԗ̛#!�ĳ���ɭ�kY�CN�UF��:�:
�/�I�3�W>_�x^��+���)W��ev����T6�N�D����
@xb�Q��K������]q���|m(�'���To
1��.�6���(���(�cl���Q�y\�K8��~,�)�z�ԓt�^�ӱ�7�8�#a�D��y���+Of�`�qńsiN ��#�E���M�����-��w�>�ݾ3��7m���S�K�|�S*il9�㿿a�k�71O���a� �6�" �
]U�%@���|+{�W���Xr^>��Y�I�?d �n{:�����-�ǉy��F]��+L�>�z� 2'J�eO��銃�d��:�P ��F����+��w��������zk ��y�Cs�u&�n�Ϭ͐��q��q�\�8;Q�r�� ��I�*'����&q�H�����ֹ�<>]�WL)����8����4�
��x�cIR���铭�Y�Y�9�+&�3�]q����;Pw"A_h��0��D�����[������1���D�Ԯ���q�+Zw��5̩v�@�    �Q�C=.J\p��?��
Cq�x(]�S�����*aꎷ��+&F�a������Uױ�G�u��R�-�~�l+�G"��/��v��]&�z|�"��l�u9@��^%��N�{���o��#�v�D���1�1aK��
��b*��(&Ȯ���QO u���!7 u69�5͓ɪ趔K[�ϗ��T��G���l���(���ɮ���sNr ��>ui���݉A:5��Ɉ&�[J����Ѐ��7Q7��W�|����c�>�U�R�<}ϢoZ ω }�b��w:+@���PI��*��I<a���S	�JE��
���� t�a��I �D���V�K��μ @g.�|N̓�.���h���3i\Z��"�� tN�y�Ksc����O�������N��I8ۏ�6��՗�I[���.���吶�O'��@��@:��)���ȩz�=r��St�CI��|���B)@�*Äy�Y����,�k��k�W9�R��+�tr�6��R� �U�G��
�\e 4�a�>g B�
��� v�U`�Dّ�ʯ\Q��sc��_LAX���M��|�<Q&��g]��������
0w"@���$���KV�C�
l�H�[��"����VoAA��_�T �D��Nngl��;ɓ��hОJ��j �� <��mW�%].�mkW]���. ��&�Y�X���M�?(i�	�:1h?I=|Z��JQ�� ���K2�,]��)-Y����5�ul��
��������YWM���q���.���\������\ej�>���Ӊ�����u�N������0:�!��I��h�^ej��'/����������N�zi�^������l:�7<)y2�ȗ��u�82Ox,w�K��phWM�������W�pV@�Ĩ�?��N��o��.7��~<�����t���8 `�9^WM�)w��]5!\|��]udb3�6��(~]gWMuE=*+�u�"qb�x����ս�e�Ҟ>$�O}�w|m� _W����:䳐;/�ݜ ��R#�u�&G�P�:��R��к�<_��n�NȢ�d�l�h�_���A'F���.ʨ@g�f�`t"׷��]ܢDޱ{��XNCY�哏��a�Tԣo���5��|Tǫ_:P��4��\5U�}�V��*���=W�/�Z����p��/
 �US}\�4]����YĜ4�=���*d�mv-D癪���(@S�������P�:�/��{mHWM�՞�@�*Y��
8:1O.D��QWM �k�W7[��(�I��Һ̿$G��XǙ�����T���Չ��SW �D�}O�R�����0�9�X���l��K��N���j�_�߉��� �6@x"a ��"��������t_� }�p�>�퓕����V�������eC}k��w�1;qO��2�ޞl �5S�<�mh����*�5�_[�s����}�%3��{~���Ly��S��pl��f,O��$Y�ZC�R�O_��a�[��V���R���|���L	���|�L�9����.W��	�x����5 �)��g�h��Ͷ�=����/���<Q��X=�@���]������P`���.2-7P�~������Ij�yN ��	�{�_@�����}�T���di@��q��>&����/�7@|b�Q��膂䥧ۗ��\4�:��\I���	����t� �x
�k�P?Q�B5�|_3��bK����͸?����(���ŵ�v����s�]6�U����2�(�������O��������{͇q�+`z"a(ŭ�_5 �Ġ��Uߋ�����,t�g4T���z�UhV��@���>"6`��hs�\ܻ6 {s]|��Kh�7DwsP�V-�����7,fvR����{wݑ� ��{1�w�}i�Lۄ��O�Mh(aH���l���S��@��hs D]3�h}ŵe��˴^�N�pD������ w�N���<��S��w�t�l�^�kKC�KM5e	����#l�lm�4�o�q<���N��O��@wm��bz��}Y���XVY�[��~9�7�용�%��5��D`�t9��h#��m۞��G���?�pPw"6��R���}��O�]b�.�Wm3~(�.-3c���(@?�5�K��y>��-�l���*^-m1���Є8�X �52)��� ��O-�!�:������X<���N��h�Ƥ����h�QX[������㳔A"���JU;� e��Y�����㚁\2@޵A?7�"`��us���$Û����5_ ����>���	p�9�v��w� �D��f�C��]����G| �v�/8��������LFB+ƯO6h��~�?t �:S�Ծ�v`�D�(���=�N��|�;�I�yv �ļ��Uw`�D�~6lhPC�[V��|Zw�I��FM$��FG85Q�_�N��6��>��G�mk�P�}	r�Jr�1��s	C?f4���Xp�n���?v Ԧ�X�`i�T���1��&j_��J�Lz?�'�XZO�Ue��&�t�W���&�ɼ��# Bm����f5�ib��p���n�J������XW�Zg�ğ��Q�2�S�����=�E[�@���a�|�!��3��ImKB�_.I܁T���@�M�lMz�1�^��ށ\��h��/������My�t�����y�iv�@�����N�@�� ���� �&���[�˭ʮ�W�c,��u�BbL�Z���1�_���ʻ�ץ 7p\7�gb�5���h���;�ls�1_���v���-�5\�ӑ��Q��#D71��5G���̉�!�%�J���G�ъFo���`qb��v��� ��$}d���T�ˌ�3��`�������jd8:�x�i�n�@/�M��h�f'�' t�y P��es��"_ ��s��ɥ
��h�Olՠ�9~��ց��TYZ0���h���#Z7[��� �u�@-["׿�&�"'���[l �u&��`N�tn�����ԅ1.C��=n� �M����!o����w�x�>ث:��M�����)!��.���(����{�,�!��o�@Ɖy+M�y@É�!�y�Mk�8y@�	0|gT�_b��>n��y��9�8b(g�E�#�i��9��}Ί�7�u�=9��FYBG�ǒ�������ǖ��3��	����IFׁ�	����) 7��;�pb>�C�e㔭f�2Z�sx�}���P� �|{z$6�Z��$���� �d-^�3�� �m8�~~~Dpm�H�z�+� �m���r�n} �&�d�`�9��3�2#�P�QS����S�7��I�D�~I`=f��dg4�b�@�����V9 �&��p= �����*���;R���Ag��b�|����}�Ȇ=#w�{��dk�h0 �GF)���o�*����=�����>|� ���2�{�e�<9���ۧ��eoL�{��.�:3��D�̦NL��R�=�����0:e�8�� L	�|�T��s���l9'sK�o6"�
yFVg.p{�:�1]�X@� ]�Ro@E��qؽ��7\,����	:��]l�0Ut�]!P}�X qkP>1o��L\�����7^� �D�o?���eG>��h�%Ы�Q���k�`���R���Dű����zs���F�\( �7*�ͼ� �'v��Ȁ�C8�^!}g�<%�w��I���:pw��?jӊ�/��>o�N��S�e�w��(Ag��z�:	����7�Ԝ���]��`�&��N�5�q22K��V�le_����`��Fh:���k� �H������g6�{6�t�����{��nN	��=�Ёrdp��
��	T{��eC���ŀ㉖#��y!�7����Nػ��t�g�7uP�}��aJ�ޔk�Lo�����T�Q��|�y��7�%���t�pam��O�ɂ~� �   tio������u�Q�N�Q򚤻e�@{b�@=� �4��ﶊ�o��X���4�4�������`x�D�Gҿ�]�|,�̘뜿��4N$1����l
������]:L�(_�k�u��Ǜzl5R���� �/��u�}4:
JhS_b��v~>��Ƹ�����?��?��H      F      x������ � �      H      x������ � �      D     x�]�K��0��ur
N0j£�z�Q�B�b�:�h�����I�%��o��i�g�f��c�Y����G�<��ЂRq�0G��f�a����[�m��Le���4u}0�x`+� �	{�}�R��NT����v�����֝d�~O]D�l�	�����<,�����ӺB�[ZA)���T���qu�<�͏>��_��� ��m�.2�)H���:x�ޟ8�1WY��'���`:Y��;�LL�vf���x댰j'�k�2�      J     x���Ko�@��ïp���3�8<�>m��B!jL��~�#(��Ҥi�覫��8��.�s����=��,FBȺ�&�z���(a���n����u<��+� F����q�\Q��K�Kp2A�&i��k��_���|�e"�P��
/��*�B0ĐG���I*UD*Q�xH�������ج�}n��{����!���d�����XX�[��W������_�48,�q�̰�EE�0�!����!ʂH�()��'�a�6xhY      L      x������ � �      N      x������ � �      P      x������ � �      B   W   x�M�K
�0�y����M�P�C�.z{E��LOn�!љ='���\��
K�!'�o�k��JU̴�d�f���)?�~��pM^%�      @   �  x���An� E��)z�F09K�J��dp�ܾ@\�������fdҜ���u6� �v��ꡡ@ᕐWh_��xwb�H��oā6z���*Ae�`���v�+i��P4������S���ތ��`�ߡ�\6"!��~g�;#ա>G�&|t��g�I�&�hYf�?��o7����h�QR)Ul�ꏢ��8?�rK�G�������&J�L�*���%���� �2OU)�#%?J7n��v$!J�����A����l�g.)(Q�R)"��\��v�v����0Ż���\[�҃���|(�7�;��	A���]2�ح'Vqݦ��H��6����GO���p��QVT��2?����e���˜����>,䶟�I�o~�6�����gc�R�[��	f�u�W�X�QZx;��Yf      Q   
  x���n�0  �g���@M[l���� �YBP��C�����a�5)/��m������ۨ�B�����Nm;������­�ٻ�e/��mj@Ѧ�$�U9�O���ǈ�����M�â#S�_�^�Pe�6��t�]�d�R]ҕ�u�����8��*���x-�Ϙ,׷6fo��5��?�2���xHt�-x�Pnt$*c(u5zu��ٶ�@zg�-�V�w��-�sv�Ƞ/�CB k_X�LGl�0��H����(��\�     