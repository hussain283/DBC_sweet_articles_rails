--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    url character varying(255),
    category character varying(255),
    tags character varying(255)
);


ALTER TABLE public.articles OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apprentice;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles (id, title, description, url, category, tags) FROM stdin;
1	et delectus qui	Facilis quae sit et dolor quia aut commodi. Aut quod unde autem eaque ea sint voluptates. Dolorem nesciunt excepturi iure. Accusantium aut reiciendis optio sequi. Exercitationem occaecati sit qui quis nesciunt quia.	articles/7/23/2013/et-delectus-qui	Business	love
2	quibusdam alias assumenda	Facilis voluptatem blanditiis recusandae non est labore neque. Necessitatibus et molestias recusandae assumenda libero nostrum. Illum quod voluptatem magni non. Ut dignissimos ea voluptates ut sequi quo molestiae.	articles/7/23/2013/quibusdam-alias-assumenda	Business	random, rails, medicine
3	et et nostrum	Omnis dolores incidunt quam quo labore. Corporis eum vel dolore. Nisi voluptas sit. Eum saepe est voluptatibus soluta maxime. Dolor ipsa dolorum est est excepturi quas aut.	articles/7/23/2013/et-et-nostrum	sport	art, random
4	eum similique cumque	Quo corporis cum quos perferendis porro quam. Vel aliquam et ut animi. Quis nam quod magni neque ullam atque sint. Consequatur necessitatibus iusto dolor voluptas.	articles/7/23/2013/eum-similique-cumque	business	
5	impedit alias itaque	Consequatur molestias quo. Iste qui recusandae aspernatur qui ut. Laboriosam voluptates voluptatem. Nesciunt eos modi quisquam voluptatem sed eum.	articles/7/23/2013/impedit-alias-itaque	programming	love, music, jquery
6	velit harum in	Voluptates impedit sit deserunt dolor omnis possimus. Accusantium excepturi velit ipsam qui soluta rerum dolor. Inventore expedita tempore. Excepturi assumenda temporibus eum sed debitis.	articles/7/23/2013/velit-harum-in	computer-world	rails, random, computer
7	cumque et totam	Est cum impedit eius in ut harum. Itaque aliquid veritatis aut placeat adipisci. Repellat aut impedit suscipit est.	articles/7/23/2013/cumque-et-totam	computer world	widget, jquery
8	exercitationem similique consectetur	Id rerum eius quisquam numquam officia. Repudiandae pariatur dolorum sit. Vel sunt tempore repudiandae et deserunt. Laudantium adipisci in.	articles/7/23/2013/exercitationem-similique-consectetur	programming	medicine, ruby, rails
9	minima perspiciatis vero	Qui ullam eius deserunt voluptatem. Maiores quo esse sed. Debitis laborum aut. Inventore eum doloribus quod hic pariatur. Omnis eligendi dolores magnam in.	articles/7/23/2013/minima-perspiciatis-vero	computer-world	jquery, random, widget
10	eligendi eaque incidunt	Natus id nihil tempore quia corrupti quas. Molestias asperiores in praesentium esse minima. Ut quibusdam ea corporis error tempora. Minus cumque nobis et rerum placeat. Quis quaerat qui unde.	articles/7/23/2013/eligendi-eaque-incidunt	sport	widget, rails
11	quas voluptas eum	Dignissimos alias aut doloribus consequatur. Veniam quia est officiis ut. Ratione magni enim debitis tenetur.	articles/7/23/2013/quas-voluptas-eum	Sports	
12	ipsa ut quisquam	Assumenda porro molestiae quisquam soluta. Dolor itaque totam tempora omnis cum. Vitae voluptatum amet.	articles/7/23/2013/ipsa-ut-quisquam	Business	ruby, random, love
13	facilis ut maiores	Ut eos nemo consequatur facilis voluptatem. Cupiditate labore exercitationem occaecati ea dignissimos molestiae. Neque ea perspiciatis.	articles/7/23/2013/facilis-ut-maiores	business	jquery, art
14	vel eos impedit	Saepe asperiores est blanditiis et qui optio aut. Unde et molestiae enim nihil magni. Eum exercitationem dicta aut. Placeat impedit velit fuga voluptas enim pariatur. Maiores qui beatae sed voluptas eos in.	articles/7/23/2013/vel-eos-impedit	Sports	tech
15	delectus repellendus a	Et vero consequatur nisi labore rerum. Dolorum molestiae est numquam quae autem. Odit architecto non tempora ea recusandae vitae. Ex incidunt fugit ut.	articles/7/23/2013/delectus-repellendus-a	computer world	hate, random
16	quis veritatis similique	Corporis aut sapiente ipsa cumque laborum illo. Dicta aperiam voluptatum illum assumenda quam. Rem culpa quo fugiat quos. Non adipisci tempore laboriosam.	articles/7/23/2013/quis-veritatis-similique	Business	
17	velit eum ea	Autem et sed commodi ad rerum facere harum. Non laboriosam tempora et eveniet consectetur. Libero tempore modi temporibus. Est ea omnis ut. Dolor velit dolorem voluptatem.	articles/7/23/2013/velit-eum-ea	business	tech, random-tags, cloud
18	modi corrupti commodi	Dicta eligendi corporis maxime eum est et reprehenderit. Exercitationem mollitia atque dolorum veritatis ea. Totam ullam facere distinctio aspernatur molestiae magnam fugiat. Temporibus laboriosam repudiandae eum repellat exercitationem aut.	articles/7/23/2013/modi-corrupti-commodi	Sports	cloud, computer, ruby
19	vel esse animi	Et reprehenderit aut blanditiis dolore eum. Qui iure repellendus reprehenderit provident. Perferendis quis non quia voluptatem porro ipsam enim.	articles/7/23/2013/vel-esse-animi	computer-world	computer, cloud
20	nostrum aliquid velit	Ut deleniti perspiciatis quia. Non deleniti quam cupiditate est sed nostrum. Reiciendis dolorum tempora optio est. Ab rerum sit debitis autem. Consequuntur ex quo.	articles/7/23/2013/nostrum-aliquid-velit	computer-world	random
21	culpa doloremque aut	Facilis molestiae est illo et velit sed aperiam. Dignissimos non vel quam eum laudantium nihil tempora. Eos id quisquam sit esse qui. Sit quasi aliquid corrupti qui excepturi veniam numquam.	articles/7/23/2013/culpa-doloremque-aut	computer world	love, jquery, cloud
22	in illo aut	Assumenda quas quia. Eum numquam voluptas quo consectetur enim. Et ipsum id libero natus optio. Officia qui rerum maiores vel nisi error est.	articles/7/23/2013/in-illo-aut	Sports	ruby, art
23	quibusdam voluptatem rerum	Nisi magni sit voluptas. Et laudantium dolor qui eos aliquid asperiores officiis. Amet ipsam nihil vel necessitatibus. Asperiores quidem necessitatibus non laboriosam inventore.	articles/7/23/2013/quibusdam-voluptatem-rerum	sport	rails, cloud, random
24	exercitationem qui mollitia	Qui perferendis dicta aut. Modi itaque culpa cumque ducimus qui. Voluptas enim enim.	articles/7/23/2013/exercitationem-qui-mollitia	sport	
25	placeat ut vero	Est reprehenderit voluptatem nesciunt rem amet. Est et omnis. Enim nihil ullam eos eum eum praesentium sapiente. Non ipsam dolores velit itaque assumenda consequatur.	articles/7/23/2013/placeat-ut-vero	computer world	music, tech
26	voluptatibus ullam et	Laboriosam ad rerum dignissimos cum qui voluptates voluptas. Natus deleniti molestiae voluptas non provident. Sunt officia magni possimus blanditiis.	articles/7/23/2013/voluptatibus-ullam-et	programming	love, widget, rails
27	ea inventore ratione	Dolores ea voluptatem voluptatem. Nemo occaecati alias incidunt eos voluptatibus quae molestias. Qui reiciendis modi quasi enim officiis voluptatem molestiae. Reprehenderit neque animi.	articles/7/23/2013/ea-inventore-ratione	HEALTH	random
28	ad quo asperiores	Sit alias unde facere quia repellendus. Dolores optio voluptatem ratione nulla qui. Recusandae id rerum laboriosam. Quis est tempora ut similique illum id. Rerum a earum qui dicta officia temporibus voluptas.	articles/7/23/2013/ad-quo-asperiores	computer world	tech, random
29	vel tenetur facilis	Omnis impedit in provident quas sint. Dolor earum ut unde. Quia odit quam suscipit optio quis consectetur minus. Debitis reiciendis nisi vel. Rerum quia explicabo omnis qui temporibus cum.	articles/7/23/2013/vel-tenetur-facilis	computer-world	
30	iste necessitatibus et	Autem et rerum ab. Illo nostrum odit soluta. Cum cumque aut recusandae minus temporibus expedita asperiores. Cumque consequuntur est rerum in.	articles/7/23/2013/iste-necessitatibus-et	computer-world	random, medicine
31	occaecati temporibus non	Consequatur doloribus sint a explicabo temporibus nam. Sed repudiandae voluptatum culpa veniam sit. Excepturi consequatur omnis quia aut esse architecto. Velit non pariatur facere voluptatem.	articles/7/23/2013/occaecati-temporibus-non	computer world	
32	est provident qui	Expedita consequatur non quidem maiores velit. Sit illo iure exercitationem ipsam. Officia perspiciatis repellat id consequatur.	articles/7/23/2013/est-provident-qui	programming	cloud, tech
33	numquam sunt quod	Nemo et deserunt sunt rerum et assumenda nam. Iusto laboriosam odit et ducimus consequatur minima. Pariatur voluptatem quam.	articles/7/23/2013/numquam-sunt-quod	Business	music, cloud, jquery
34	nostrum in occaecati	Corporis sint praesentium inventore. Quisquam aut et. At et aut fuga.	articles/7/23/2013/nostrum-in-occaecati	programming	cloud
35	animi et aut	Et vero sunt a fugiat sit. Soluta maxime ipsum non accusantium. Numquam in quia ut eum. Expedita impedit qui laudantium dolores dolore id labore. Sed est minima sint culpa sequi omnis.	articles/7/23/2013/animi-et-aut	computer world	cloud, music, medicine
36	repellat adipisci cumque	Voluptas dolorum quia. Modi sapiente molestias et facere neque. Repellendus dolor quo rerum ea nisi nihil. Eum veniam doloribus. Ut et perferendis sint dolore impedit quos.	articles/7/23/2013/repellat-adipisci-cumque	computer-world	widget, love, medicine
37	quaerat quia atque	Ab ut quis et. Facere tenetur perspiciatis voluptatem delectus laboriosam est incidunt. Et nisi veritatis.	articles/7/23/2013/quaerat-quia-atque	programming	widget, medicine
38	nihil itaque temporibus	Deleniti vero sunt facilis quidem. Natus non vel quia quidem molestiae corrupti laboriosam. Dolore minima magni. Nihil nesciunt quia necessitatibus similique velit. Perferendis maiores neque nesciunt.	articles/7/23/2013/nihil-itaque-temporibus	computer-world	
39	ullam quisquam repellendus	Dolores vitae repudiandae labore rerum quibusdam. Rerum fugit non rerum doloremque rem aliquid. Enim in tempore ab consequuntur ullam optio odit. Ut cum dolores ut accusantium nesciunt voluptatem. Nemo perferendis est consectetur eveniet suscipit animi corrupti.	articles/7/23/2013/ullam-quisquam-repellendus	Sports	art, hate, jquery
40	iste dolor reprehenderit	Et eveniet sed et voluptatem nesciunt. Cupiditate sit dignissimos consequatur dolore autem quisquam omnis. Sunt necessitatibus dolor vitae ratione ut.	articles/7/23/2013/iste-dolor-reprehenderit	business	random, love, medicine
41	aut libero et	Qui natus est. Vitae mollitia molestias harum soluta ad occaecati. Nesciunt voluptas est et officiis. Hic deleniti corporis repudiandae blanditiis in.	articles/7/23/2013/aut-libero-et	sport	tech, art
42	ut laboriosam enim	Reprehenderit ducimus dolores cumque. Accusantium et quos mollitia quia repellat totam officiis. Dolores voluptatem impedit magni perferendis atque autem.	articles/7/23/2013/ut-laboriosam-enim	Sports	
43	eveniet sit saepe	Natus ut reprehenderit. At molestiae error. Omnis voluptas consectetur. Aut labore blanditiis. Distinctio repellendus eligendi est et.	articles/7/23/2013/eveniet-sit-saepe	business	random, ruby, tech
44	corporis voluptas consectetur	Qui veniam eos ullam maiores voluptate earum. Aliquam maxime dolore voluptatum excepturi voluptas sint aperiam. Laudantium magni corporis quasi expedita. Sapiente ipsa ipsam.	articles/7/23/2013/corporis-voluptas-consectetur	Business	art
45	sit quasi saepe	Sunt dignissimos inventore et ullam dolor. Nostrum iste ut deserunt occaecati blanditiis ea culpa. Doloremque dolor eos.	articles/7/23/2013/sit-quasi-saepe	Sports	
46	optio est vel	Vitae officia consequuntur qui voluptatum et ipsum. Labore dicta quisquam omnis aliquam. Beatae quia doloremque quaerat. Fugiat optio aut qui sed rem culpa. Error mollitia deleniti ipsam nulla molestias.	articles/7/23/2013/optio-est-vel	business	jquery, cloud
47	magni sapiente sunt	Est ea minima aut corporis. Iusto possimus voluptatibus ratione. Autem deleniti qui deserunt repellat. Omnis voluptatum est dolor.	articles/7/23/2013/magni-sapiente-sunt	computer world	computer, love, music
48	sed eligendi id	Esse doloremque aspernatur quidem tenetur. Non reprehenderit quo ullam quo accusamus a. Perferendis sint sequi adipisci porro aperiam. Et eos atque delectus. Occaecati accusamus ad vero.	articles/7/23/2013/sed-eligendi-id	business	computer, love, random
49	impedit alias dolore	Id sunt et qui dolore rem. Ducimus fuga quia accusantium quam voluptatum. Fugiat corporis consequatur sunt. Commodi aliquid aut velit accusantium ab. Qui sapiente impedit ipsam.	articles/7/23/2013/impedit-alias-dolore	HEALTH	tech, ruby, cloud
50	dolore impedit culpa	Asperiores labore et. Sequi quia nobis aliquid ipsum et earum. Maiores a rerum rem ut quaerat exercitationem recusandae.	articles/7/23/2013/dolore-impedit-culpa	business	tech
51	omnis ipsam sed	Fuga officia et at animi hic quaerat occaecati. Corrupti voluptates atque praesentium voluptatem. Ex commodi aut fugit et explicabo itaque. Architecto vitae eos expedita similique.	articles/7/23/2013/omnis-ipsam-sed	business	cloud, ruby, art
52	excepturi eveniet et	Nesciunt exercitationem voluptas et. Consequuntur est illo dolores quia odit aut. Exercitationem est et dolor nostrum quia ut placeat.	articles/7/23/2013/excepturi-eveniet-et	computer world	tech
53	et ut eos	Reprehenderit labore eveniet veniam ipsum omnis. Tempore molestiae minus ut non consequatur. Minus sequi quia alias. Nemo saepe iste quidem.	articles/7/23/2013/et-ut-eos	computer-world	ruby, art
54	sed est inventore	Magnam praesentium velit autem esse rem voluptate. Quasi voluptatum voluptatem. Ipsa modi reprehenderit.	articles/7/23/2013/sed-est-inventore	programming	
55	dolores quia ab	Non quia impedit. Error libero sapiente maiores quae. Perferendis officia incidunt dignissimos ut velit repellendus eveniet. Voluptas necessitatibus est. Sed ullam non qui necessitatibus ea consequatur.	articles/7/23/2013/dolores-quia-ab	business	hate, jquery
56	voluptates ut perspiciatis	Porro rerum odit ex quis ea. Quis facilis nostrum at sint quidem. Nemo ipsum voluptas. Nobis quia architecto doloremque.	articles/7/23/2013/voluptates-ut-perspiciatis	programming	cloud, art
57	exercitationem nisi porro	Et illo debitis maiores rerum corporis. Nisi eos beatae. Consequatur possimus quaerat excepturi et molestias debitis.	articles/7/23/2013/exercitationem-nisi-porro	programming	medicine
58	qui consequuntur quia	Sit aut corrupti ipsam inventore. Tempore quae et voluptates reprehenderit. Deleniti voluptatibus quo perspiciatis totam iusto pariatur quis. Ratione aut sunt. Molestiae qui illum sunt nihil placeat tempore.	articles/7/23/2013/qui-consequuntur-quia	programming	ruby, music
59	aspernatur non eos	Omnis minus saepe labore. Corporis sit molestias id sint sit. Quo doloremque exercitationem voluptas voluptatem non aut. Dolores quia modi est.	articles/7/23/2013/aspernatur-non-eos	computer world	
60	vero voluptatem rerum	Placeat eius facilis ut modi quibusdam corporis. Id sint autem. Velit molestias facere explicabo qui. Illum blanditiis consequatur officia expedita quia quos. Sit architecto totam velit rem.	articles/7/23/2013/vero-voluptatem-rerum	sport	computer, medicine, music
61	ratione quam quis	Provident vel aut mollitia accusantium dignissimos. Voluptas deserunt dolores quos est reiciendis. Repudiandae sapiente quis qui aut ea nihil mollitia.	articles/7/23/2013/ratione-quam-quis	computer-world	
62	quasi tempore cupiditate	Nulla ad id suscipit voluptas voluptatem et. Reiciendis voluptatum quasi dicta praesentium quia veritatis. Repudiandae quia aliquam voluptas nihil autem. Voluptatem voluptatibus quo animi.	articles/7/23/2013/quasi-tempore-cupiditate	sport	jquery
63	porro velit ut	Temporibus veritatis omnis iure deleniti molestiae sed. Quia autem vel eos non placeat harum minus. Molestiae sapiente aperiam necessitatibus nam voluptates sed molestiae. Voluptates dolorem consequatur voluptatem.	articles/7/23/2013/porro-velit-ut	Sports	random-tags, hate, art
64	voluptatem aut et	Excepturi qui ea. Amet iusto vitae rerum sapiente. Reiciendis eos quos cumque id dignissimos temporibus. Quam voluptas hic qui.	articles/7/23/2013/voluptatem-aut-et	business	cloud
65	ex aliquid blanditiis	At nobis ut. Natus tempore aut eum quos dolores. Repellat aut maxime.	articles/7/23/2013/ex-aliquid-blanditiis	business	
66	praesentium architecto officiis	Aspernatur et qui earum et officiis amet necessitatibus. Eum repellendus aut beatae sed esse et cumque. Alias et ratione sed nulla deleniti quia.	articles/7/23/2013/praesentium-architecto-officiis	computer-world	
67	velit corporis voluptate	Voluptas impedit assumenda quo. Et assumenda dignissimos sit itaque. Modi exercitationem dolor id quo.	articles/7/23/2013/velit-corporis-voluptate	computer world	cloud, tech, jquery
68	exercitationem iste quae	Possimus aut omnis distinctio consequuntur non. Aut quis vero omnis ducimus cum quisquam et. Quibusdam aliquid qui numquam et modi quam maxime. Aspernatur officiis est hic dolorem. Id non ut impedit nihil.	articles/7/23/2013/exercitationem-iste-quae	computer-world	rails
69	ad impedit voluptate	Aperiam debitis error est facere molestiae nulla. Qui architecto sunt a. Dolorem ex perferendis expedita quasi cupiditate.	articles/7/23/2013/ad-impedit-voluptate	programming	computer
70	est voluptatem vitae	Eaque et amet exercitationem. Perspiciatis reprehenderit tenetur veniam sapiente sit. Cumque voluptatem saepe vitae corrupti quo id rerum. Totam eos dolores consequuntur repellat porro cum sit. Officia veniam est.	articles/7/23/2013/est-voluptatem-vitae	HEALTH	love, music
71	voluptas dolore aut	Labore ut rem ut. Atque ut facere ea. Saepe sapiente architecto suscipit qui voluptatem animi.	articles/7/23/2013/voluptas-dolore-aut	Business	computer, rails
72	pariatur in saepe	Id voluptate et ipsa rerum repellendus dolores voluptas. Et corporis voluptatum molestiae aliquid ut doloribus facere. Placeat repellat ullam officiis. Unde inventore cum praesentium. Eos facere veniam cum voluptas in est.	articles/7/23/2013/pariatur-in-saepe	HEALTH	love, hate, ruby
73	voluptas blanditiis velit	Nobis aut aliquid sit neque eaque rem. Sint eos consequatur. Quasi laboriosam nihil et qui aperiam quidem. Esse voluptatem animi iste. Ad quia iusto dolor eligendi.	articles/7/23/2013/voluptas-blanditiis-velit	computer world	
74	magnam delectus cumque	Explicabo ut non accusantium velit. Qui incidunt et. Fuga sunt cum aut sit voluptatibus possimus.	articles/7/23/2013/magnam-delectus-cumque	Sports	
75	quia consequatur velit	Quia illo unde vero. Delectus repellat est facere commodi debitis ut quas. Vitae ducimus consequatur.	articles/7/23/2013/quia-consequatur-velit	business	
76	id ea sit	Quas harum dolor iste molestiae. Consequatur officia molestiae dolorum ut fuga voluptas. Et voluptatem repudiandae animi qui facilis.	articles/7/23/2013/id-ea-sit	Sports	
77	ex ratione excepturi	Et voluptates atque magnam. Laborum qui quia. Illo omnis qui molestias maxime vitae totam. Et quibusdam sed. Rerum ipsam quia.	articles/7/23/2013/ex-ratione-excepturi	sport	cloud
78	voluptatem dolor veritatis	At iste id ea saepe. Sed qui et nesciunt autem. Asperiores ut autem.	articles/7/23/2013/voluptatem-dolor-veritatis	business	art, random, love
79	nostrum eligendi explicabo	Id est inventore maxime aperiam id et consequatur. Dolorem quia dolor ab aperiam veritatis et quas. Mollitia assumenda a pariatur consequuntur modi. Ut et et qui quae.	articles/7/23/2013/nostrum-eligendi-explicabo	computer-world	tech, widget, rails
80	delectus repellat mollitia	Nemo eum consectetur commodi est maiores et. Quod quisquam ut dolores at velit. Id porro beatae nemo consequatur dicta deserunt et. Non impedit dolorum culpa.	articles/7/23/2013/delectus-repellat-mollitia	business	jquery, art, music
81	quibusdam ad repellendus	Ut odio rerum expedita recusandae ullam. Animi molestiae totam sint. Dolore et voluptatibus sed sint. Iste doloremque ex maiores asperiores soluta quam fugiat. Nihil temporibus dolor aut est ut in ullam.	articles/7/23/2013/quibusdam-ad-repellendus	computer-world	medicine, cloud
82	id ex sunt	Qui debitis maxime voluptatem corrupti ut veritatis. Eius libero quia inventore. Quae est ut quos voluptatibus reprehenderit.	articles/7/23/2013/id-ex-sunt	computer-world	jquery, art, cloud
83	itaque asperiores occaecati	Est natus inventore. Accusamus dignissimos aut molestias. In quis consequatur voluptatem cupiditate quidem vero dicta. Quod enim voluptatem soluta deleniti reiciendis minima. Sequi nihil perspiciatis sed voluptatum dolores non sunt.	articles/7/23/2013/itaque-asperiores-occaecati	Business	
84	et enim adipisci	Sed placeat inventore maiores modi magnam omnis. Ratione qui molestias. Et non et neque. Iure vel consequatur sed veniam voluptatem atque.	articles/7/23/2013/et-enim-adipisci	Sports	random, music
85	totam sunt aspernatur	Consequuntur minima quia repellendus aut quae est et. Ducimus quo assumenda minus laudantium inventore harum. Quis quos molestias laborum ut alias.	articles/7/23/2013/totam-sunt-aspernatur	programming	love, ruby
86	dolorum alias dolores	Placeat omnis enim. Ipsum ut laboriosam consectetur. Voluptatem et doloribus deserunt perspiciatis. Qui magnam error quis sit mollitia. Sunt ipsum quod quo ut.	articles/7/23/2013/dolorum-alias-dolores	business	cloud, art, jquery
87	quas rerum culpa	Voluptate dolorem est similique suscipit fugiat nulla minima. Ea aut ipsum voluptas deserunt nihil excepturi sit. Tempora unde repellat ipsam tempore ratione neque qui.	articles/7/23/2013/quas-rerum-culpa	Sports	
88	eveniet fugiat sit	Ab dignissimos qui officia soluta quia vitae blanditiis. Iste corporis eveniet quia dolor odio. Delectus suscipit qui facilis.	articles/7/23/2013/eveniet-fugiat-sit	computer world	widget, random, music
89	fugiat enim nisi	Consectetur et dolores unde perferendis temporibus suscipit. Voluptatem accusamus quia totam distinctio. Consequatur rerum illum quia.	articles/7/23/2013/fugiat-enim-nisi	computer-world	random-tags, jquery, love
90	et distinctio provident	Blanditiis rerum ratione iure deleniti voluptatem. Illum sit id aut suscipit unde nam consequuntur. Et rerum minima velit voluptas quaerat dolorum repudiandae.	articles/7/23/2013/et-distinctio-provident	computer world	random
91	aut enim nihil	Excepturi nobis magnam rerum eum odit. Quia at laudantium autem qui aut. Consectetur ab similique cupiditate provident quos.	articles/7/23/2013/aut-enim-nihil	computer world	music, ruby, tech
92	dignissimos sit qui	Maxime a dolore consectetur labore quia et. Quod sed consequatur molestiae aspernatur molestias. Est ut qui adipisci culpa. Est ab odit.	articles/7/23/2013/dignissimos-sit-qui	Business	widget, jquery
93	id aut minus	Et suscipit quia vero iusto nostrum quo. In nisi est perferendis nihil magnam. Vel qui ut magni.	articles/7/23/2013/id-aut-minus	business	computer, random, rails
94	deserunt veniam officiis	Porro cum et illum necessitatibus. Natus et porro. Debitis minima commodi. Repellendus deserunt qui culpa inventore. A sunt qui ad laboriosam est deserunt.	articles/7/23/2013/deserunt-veniam-officiis	business	
95	ipsa laboriosam dolor	Esse in id libero incidunt. Est modi corrupti ipsa itaque. Omnis et adipisci esse expedita.	articles/7/23/2013/ipsa-laboriosam-dolor	computer-world	ruby, love
96	minus incidunt a	Assumenda repellat quod explicabo voluptatem consequatur in. Dignissimos ut sint et est ex error. Nihil voluptate nihil occaecati distinctio laboriosam eum qui. Voluptatem recusandae rem quis voluptatem et. Voluptates libero deserunt iure blanditiis corrupti.	articles/7/23/2013/minus-incidunt-a	HEALTH	
97	delectus quos voluptates	Aut autem fugit laudantium fuga. Voluptatem sunt enim quia. Quibusdam culpa temporibus corporis animi quo. Aut incidunt nihil.	articles/7/23/2013/delectus-quos-voluptates	HEALTH	computer, rails
98	sint sit voluptas	Quidem voluptas neque expedita. Tenetur labore aliquam iste voluptatibus. Ipsam repellendus suscipit et ab possimus qui.	articles/7/23/2013/sint-sit-voluptas	Business	medicine, art
99	omnis distinctio non	Nihil ullam ut nesciunt similique. Aut cupiditate officia. Earum possimus dolor ea aliquid tempore. Et consequatur similique nesciunt velit delectus tempore ad. Unde quia dolor.	articles/7/23/2013/omnis-distinctio-non	computer-world	
100	occaecati ducimus quas	Modi maiores molestiae tempore maxime praesentium. Sint repudiandae dolorem et. Illum vitae incidunt quas beatae. Fuga rem veniam itaque dolores natus cumque. Dicta reiciendis ut sint quae enim quisquam maxime.	articles/7/23/2013/occaecati-ducimus-quas	Business	random-tags
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_id_seq', 100, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY schema_migrations (version) FROM stdin;
20130311183138
\.


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: apprentice
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM apprentice;
GRANT ALL ON SCHEMA public TO apprentice;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

