-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2025 at 09:52 PM
-- Server version: 8.0.39
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sealang_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'haielsa', '$2y$12$VLHItO/hKYSWpRymFTX4J.RBZ8Iy74dmAvVkqGsMlJJfepofZnyZy'),
(2, 'elsarizkiutami', '$2y$12$ojl.wgsyc0Sn8KcQ9XZrf.l.NM4O/Ov7frxhypiTpTnABf0EJ2f4S'),
(3, 'afizaanin', '$2y$12$8yR7tkKnWtBiFy5ob/gpcuwJprsuqroaEexaDVWJ9p2cV1ouVuq5q'),
(4, 'pusatbahasajabar', '$2y$12$SUdyhx5GWg1ycqbceSJkouPDODTBW4tRKtTJkDUY5KlIezu7LPHie'),
(5, 'pusatbahasanasional', '$2y$12$HKSQMq/5uM/Bdk6H1GPZBOwlr4KNgzPmKkZzD3UjZAAwH4RmeNKm2'),
(6, 'Indonesia', '$2y$12$5hkw0rLCtRuyWuxbrAfCNe8xXwEt1pNaVxCCaN.mBvZy/FpMoA.Ie'),
(7, 'Singapura', '$2y$12$Wvose9tg/JGLHSYJSnRflecEIQGYCx2KNdq1B/UhUf.rJbiNPjXiy'),
(8, 'Malaysia', '$2y$12$ul4NPOTxik.tK1YOm7UOV.FQLk80bqZUUxuSDSNXRxWoGuxZXEjh2'),
(9, 'Thailand', '$2y$12$EOprWEZpqLRpelZxB8pUA.xahy55KGU97.bwxL1rz1k/DMEuD3QJ.'),
(10, 'Philipina', '$2y$12$5NLjm8vNtth0c6wJhze.R.Qae7qTsw1upVwVLad.SJjEcLOp/O2a2'),
(11, 'Brunei Darussalam', '$2y$12$ra2rbeLv/PO91Au4wo/1l./ompN6DCUvx5xk7FYnGV.GdsSazWU1S'),
(12, 'Vietnam', '$2y$12$EJrDMRwuraks0MByu2/U0eh9JNIudUSjFfVGx.KIK/vPLxrITgoQ6'),
(13, 'Laos', '$2y$12$QOSkoI/ho.XtTfGLbUy0puk9OPTLxj3R5ogeGkJWegbCCVOxl2.hi'),
(14, 'Myanmar', '$2y$12$MbO9KQcoeB0jPyIVjUg2GuPQOtgHH5MFQxpfey7Fca17CPtychAH2'),
(15, 'Kamboja', '$2y$12$4a2d7n7TFupToGhmZPAIeOnleONUIZXPdNMp3xZjBEhMkI6gT6u2K'),
(16, 'Timor Leste', '$2y$12$rsNXiIS.PmiqsDX20hkW0OJ8GNzJHyweUZH.w7YUD4ksg8UPc13am');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bahasa`
--

CREATE TABLE `bahasa` (
  `id_bahasa` int NOT NULL,
  `nama_bahasa` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `asal_negara` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `tahun_update` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bahasa`
--

INSERT INTO `bahasa` (`id_bahasa`, `nama_bahasa`, `asal_negara`, `deskripsi`, `tahun_update`) VALUES
(1, 'BALINES', 'Indonesia', 'The Balinese Language Resource on SEAlang is based on C. Clyde Barber’s Dictionary of Balinese-English (1979), published by the University of Aberdeen. \nIt integrates several major lexicographic sources, including works by R. van Eck (1876), H. van der Tuuk (1900), and Wayan Warna (1978).\nSEAlang extends Barber’s original work by adding handwritten corrections, reorganizing derivational entries, and implementing intelligent search and lemmatization features to explore morphological and phonological variations in Balinese.\nThe project aims to provide open digital access for learners and researchers of the Balinese language.', '2011'),
(2, 'BUGINESE', 'Indonesia', 'The Buginese Language Resource on SEAlang is based on unpublished materials from Prof. Gene Ammarell, integrating about 3,000 entries and additional wordlists by Husan Abas and Christian Pelras. The project provides searchable Buginese–Indonesian–English data with intelligent root-based lookup.', '2012'),
(3, 'BURMESE', 'Myanmar', 'The Burmese Dictionary Resource is based on the Myanmar-English Dictionary (1993) by the Myanmar Language Commission, with 35,000 entries and IPA-based phonetic search. It follows standard Burmese orthography and remains under active development for improved word association.', '2006'),
(4, 'CEBUANO', 'Philipina', 'Cebuano, also known as Bisaya, is one of the major languages of the Philippines, primarily spoken in the Central Visayas and parts of Mindanao. It belongs to the Austronesian language family and serves as a lingua franca across several islands, including Cebu, Bohol, Negros Oriental, and parts of Leyte. The language has a rich oral and written tradition, with influences from Spanish and Tagalog. Cebuano dictionaries typically include both colloquial and literary vocabulary, idiomatic expressions, and phonetic guides reflecting regional pronunciation.', '2012'),
(5, 'CHAVACANO', 'Philipina', 'The SEAlang Library Chavacano Resources is based on A Composite Dictionary of Philippine Creole Spanish by Maria Isabelita O. Riego de Dios (1987). Chavacano, a Spanish-based creole spoken by nearly one million people in the Philippines, is represented in about 6,500 entries covering both main and derived forms, with a focus on the Cotabato dialect alongside Ternate, Cavite, and Zamboanga. The dictionary features normalized phonemic forms with stressed syllables marked, expanded derivations, translated example sentences extracted for a bitext corpus, and additional information such as etymology. Its search functionality supports all dialects, wildcards, roots and inflected forms, parts of speech, and local or remote examples. The original dictionary is copyrighted by the Linguistic Society of the Philippines and the Summer Institute of Linguistics (1989), used here with permission.', '2012'),
(6, 'HILIGAYNON', 'Philipina', 'The SEAlang Library Hiligaynon Resources is based on John Kaufmann\'s Visayan-English Dictionary (1934) and Cecile Motus\'s Hiligaynon Dictionary (1971). Hiligaynon, spoken by over 8 million people in the Philippines, includes entries covering modern variations, part-of-speech details, regional usage, etymology, and thousands of bitext examples. The dictionary supports flexible searches, roots, inflected forms, and local or remote examples.', '2012'),
(7, 'ILOCANO', 'Philipina', 'The SEAlang Library Ilocano Resources is based on Ernesto Constantino\'s Ilokano Dictionary (1971). Ilocano, spoken by over nine million people in the Philippines, includes about 7,150 entries with heads, subheads, and nearly 2,500 bitext examples. Root and affixed form relations are partially inferred to support searches. The dictionary allows flexible searches with wildcards, roots, inflected forms, parts of speech, and local or remote examples. The original work was published by the Pacific and Asian Linguistics Institute (PALI) at the University of Hawaii Press (1971).', '2012'),
(8, 'INDONESIAN', 'Indonesia', 'The SEAlang Library Indonesian Resources is based on A Comprehensive Indonesian-English Dictionary, Second Edition by Alan M. Stevens and A. Ed. Schmidgall-Tellings (2010, Ohio University Press). It includes nearly 50,000 headwords, 33,000 derived forms, over 73,000 phrases and examples (about 10,000 forming the bitext corpus), and around 24,000 etymological references from Dutch, Javanese, and Arabic. The dictionary supports smart search with lemmatization, predictive completion, wildcards, and flexible display options (headword, lemma, or family). Local and remote examples are provided to illustrate word usage.', '2010'),
(9, 'JAVANESE', 'Indonesia', 'The SEAlang Library Javanese Resources is based on Javanese-English Dictionary by Stuart Robson and Singgih Wibisono (2002, Periplus Editions, HK). Javanese, spoken by over 85 million people in Indonesia, includes roughly 30,000 headwords, 15,000 subentries, and 2,500 phrasal examples, marking register distinctions, literary and dialectal forms. The dictionary supports smart search with lemmatization, predictive completion, wildcards, and flexible display options (headword, lemma, or family). Searches can include English terms, inflected forms, or approximate matches ignoring diacritics, glottal marks, and hyphens.', '2010'),
(10, 'SGAW KAREN', 'Myanmar and Thailand', 'The SEAlang Library Sgaw Karen Dictionary Resources is based on the Drum Karen-English Student Dictionary (2008), derived from the Junior English-Karen Dictionary (2nd edition, 1999). Sgaw Karen is a tonal Tibeto-Burman language spoken alongside Pwo and Pa’o, which are not mutually intelligible. The dictionary is still in testing, with phonetic representation not yet derived, and requires Unicode 5.1-compliant fonts. Drum Publication Group, a community-based organization established in 1998, promotes education and preserves Karen culture, providing educational materials in Burmese, English, and Sgaw Karen.', '2008'),
(11, 'KHMER', 'Kamboja', 'The SEAlang Library Khmer Dictionary Resources is based on two editions of the Cambodian-English Dictionary: Headley et al. (1977, Catholic University Press) and Headley et al. (1997, Dunwoody Press). The 1977 edition includes about 20,000 headwords and 25,000 subentries with phonemic, grammatical, and etymological analyses, while the 1997 edition covers over 50,000 entries emphasizing modern usage, social-level tagging, and example sentences. Searches also include the Chuon Nath Khmer Dictionary (1966). The dictionary supports Khmer Unicode fonts, IPA-based approximate matching, and tools for teachers and students.', '2007'),
(12, 'LAO', 'Laos', 'The SEAlang Library Lao Dictionary Resources is based on two Lao-English dictionaries: Patterson & Severino (1995, Dunwoody Press), covering over 32,000 entries of modern Lao usage, and Kerr et al. (1972, Catholic University Press), with about 44,000 entries emphasizing heads, compounds, and flora and fauna. The dictionaries differ in spelling and romanization standards, reflecting pre- and post-1975 Lao orthography. The resource supports searches by Lao script, IPA, or English definitions, with tone-insensitive IPA matching. Lao Unicode and IPA fonts are required, and the site remains under active development.', '2007'),
(13, 'MALAY', 'Malaysia', 'The SEAlang Library Malay Resources is based on Wilkinson\'s Malay-English Dictionaries (1932 and 1926) and Bhanhot\'s Malay-English Dictionary (1996). The dictionaries cover over 26,000 headwords, thousands of etymological notes, derivatives, and compounds, with additional modern spellings and abbreviations. Malay, like other Austronesian languages, uses lemmas that may be prefixed, suffixed, or reduplicated. The resource supports smart search with lemmatization, predictive completion, approximate matching, and flexible display options (headword, lemma, or family), helping users locate words, roots, and derived forms efficiently.', '2011'),
(14, 'MARANAO', 'Philipina', 'The SEAlang Library Maranao Resources is based on A Maranao Dictionary by McKaughan and Al-Macaraya (1996), Maranao Reader (2009), and Maranao Dialogs and Drills (2009). The dictionary includes over 17,000 entries, with an additional 1,000 modern terms from the Reader. Searches support wildcards, root and inflected forms, part-of-speech filtering, and English expansion. Howard McKaughan, a linguist with extensive fieldwork in the Philippines, and Batua Al-Macaraya, a native Maranao speaker and lexicographer, are the primary contributors.', '2010'),
(15, 'MAGUINDANAO', 'Philipina', 'The SEAlang Library Maguindanao Resources is based on a lexicon of roughly 8,600 words produced by the SAY Project (2006–2008) under Dr. Jessie Grace Rubrico, along with materials prepared by Dunwoody Press and edited by Jason Lobel. The resource includes dictionary entries, corpus, bitext corpus, and other tagged materials. Searches support wildcards, root and inflected forms, part-of-speech filtering, and English expansion, enabling flexible access to Maguindanao language data.', '2010'),
(16, 'MON', 'Myanmar', 'The SEAlang Library Mon Dictionary Resources is based on Dictionary of Modern Spoken Mon by H.L. Shorto (1962). The digital redevelopment of Shorto’s work includes consistent Mon orthography, etymological references to Middle and Old Mon, and contributions from Sarai Mon, Mehm Yazar Tun, Lwin Moe, Rikker Dockum, Patrick McCormack, and Mathias Jenny. Searches require a Unicode 5.1-compliant font, with IPA input/display optimized for Charis SIL or Doulos SIL. The resource preserves Shorto’s extensive literary and historical references, providing a rich tool for Mon language study.', '2009'),
(17, 'SHAN', 'Myanmar', 'The SEAlang Library Shan Dictionary Resources is based on the Shan-English Dictionary by Sao Tern Moeng (1995), an updated version of Dr. J.N. Cushing\'s 1881 dictionary. It focuses on central Shan State pronunciation and explicitly marks tones, while largely omitting Chinese Shan and Khamti Shan vocabulary. The resource supports phonetic approximation searches, requires a Unicode 5.1-compliant font, and uses Charis SIL or Doulos SIL for IPA input and display. This development preserves Shan linguistic data and continues to improve accessibility for language study.', '2008'),
(18, 'TAGALOG', 'Philipina', 'The SEAlang Library Tagalog Dictionary Resources is based on the Tagalog Dictionary by Teresita V. Ramos (1971). With fewer than five thousand entries, it serves as a concise learner\'s reference, including over a thousand bitext examples. Original stress markings are preserved, and searches support both marked and unmarked forms. Root and affixed form links are sometimes implicit, but entries can be found via automatic fallback. The resource continues to be developed for more comprehensive coverage and supports various search functions, including wildcards, root expansion, and part-of-speech filtering.', '2012'),
(19, 'THAI', 'Thailand', 'The SEAlang Library Thai Dictionary Resources is based primarily on the Mary Haas Thai Dictionary Project (TDP), with additional data from the Royal Institute of Thailand and NECTEC\'s LEXiTRON project. It provides accurate phonetic transcription, stress marking, Thai-appropriate grammatical analysis, part-of-speech tagging, classifiers for nouns, and usage notes for verbs. The data has been corrected, modernized, and extended to include tens of thousands of new terms, with XML-tagging for web applications. The dictionary supports in-depth etymological analysis and semantic relationships among derived forms.', '2006'),
(20, 'VIETNAMESE', 'Vietnam', 'The SEAlang Library Vietnamese Dictionary Resources is based primarily on William Peter Hyde\'s A New Vietnamese-English Dictionary (2008) and additional lexicographical material by Prof. Bui Phung, FreeDict04, and Baamboo Tra Tu. The dictionary includes over 15,000 Vietnamese words, compounds, and phrases, with a focus on modern terminology such as computing, business, science, medicine, and technology. Entries have high-quality translated full-sentence examples and are corpus-based. The dictionary supports IPA phonetic search by regional accents (North, Central, South), and can be used in conjunction with the SEAlang Vietnamese bitext corpus. Unicode fonts are required for display, and input methods include VIQR and VNI.', '2009'),
(21, 'WARAY', 'Filipina', 'The SEAlang Library Waray Dictionary Resources is based on George Dewey Tramp\'s Waray-English Dictionary (1997). It includes just under 30,000 headwords, and nearly 10,000 etymological and dialectal references. The dictionary provides extensive discussion of grammar and the complex Waray-Waray morphological system. Searches support wildcards, root form expansion, and English inflected forms. Examples can be displayed as self, self/parent, or family.', '2012'),
(22, 'TETUN', 'Timor Leste', 'Tetun (or Tetum) is an Austronesian language spoken in Timor-Leste and parts of West Timor, Indonesia. It serves as one of the official languages of Timor-Leste alongside Portuguese. The language includes both indigenous vocabulary and Portuguese influences, and is used in education, media, and government communication', '2012'),
(23, 'WA', 'Myanmar / China', 'The Wa language is part of the Austroasiatic family, spoken by the Wa ethnic group living along the Myanmar-China border. It has several dialects and is primarily written using a Latin-based orthography developed in the mid-20th century. The language is also used in local administration and cultural preservation efforts.', '2012');

-- --------------------------------------------------------

--
-- Table structure for table `bahasas`
--

CREATE TABLE `bahasas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_bahasa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_negara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_update` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id_dataset` int NOT NULL,
  `id_bahasa` int NOT NULL,
  `jenis_dataset` enum('Dict','Corpus','Bitext') COLLATE utf8mb4_general_ci NOT NULL,
  `nama_dataset` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_link` enum('Aktif','Tidak Aktif') COLLATE utf8mb4_general_ci DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `isi_kamus`
--

CREATE TABLE `isi_kamus` (
  `id_kata` int NOT NULL,
  `id_bahasa` int DEFAULT NULL,
  `kata` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `arti` text COLLATE utf8mb4_general_ci,
  `contoh` text COLLATE utf8mb4_general_ci,
  `kategori` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isi_kamus`
--

INSERT INTO `isi_kamus` (`id_kata`, `id_bahasa`, `kata`, `arti`, `contoh`, `kategori`) VALUES
(1, 1, 'suksma', 'terima kasih', 'Suksma sampun ngantosang tiang.', 'ungkapan'),
(2, 1, 'rahajeng', 'selamat', 'Rahajeng enjing, Bli!', 'ungkapan'),
(3, 1, 'ngidang', 'bisa', 'Tiang ngidang ngidih tolong.', 'kata kerja'),
(4, 1, 'suba', 'sudah', 'Ia suba teka uli pasar.', 'kata keterangan'),
(5, 1, 'cenik', 'kecil', 'Anake cenik ento lucu banget.', 'kata sifat'),
(6, 1, 'gedé', 'besar', 'Umah ento gedé pisan.', 'kata sifat'),
(7, 1, 'makan', 'makan', 'Tiang makan nasi genep.', 'kata kerja'),
(8, 1, 'iraga', 'kita', 'Iraga sareng-sareng jumah.', 'kata ganti'),
(9, 1, 'jangar', 'panas', 'Cening jangar teken paneng.', 'kata sifat'),
(10, 1, 'wani', 'berani', 'Ia sangat wani ngajeng.', 'kata sifat'),
(11, 2, 'mappoji', 'memasak', 'Ia mappoji ikan di dapur.', 'kata kerja'),
(12, 2, 'naseng', 'nasi', 'Naseng itu sudah dimasak oleh ibu.', 'kata benda'),
(13, 2, 'bajik', 'baik', 'Ia anak yang bajik dan sopan.', 'kata sifat'),
(14, 2, 'sangiang', 'Tuhan', 'Kita harus selalu berdoa kepada Sangiang.', 'kata benda'),
(15, 2, 'ure', 'tidak', 'Ure ku tahu tentang itu.', 'kata keterangan'),
(16, 2, 'makkedai', 'berbicara', 'Mereka makkedai tentang acara besok.', 'kata kerja'),
(17, 2, 'sitongka', 'satu', 'Hanya ada sitongka kursi di sana.', 'angka'),
(18, 2, 'mapparenta', 'memberi perintah', 'Guru mapparenta murid untuk belajar.', 'kata kerja'),
(19, 2, 'alusu', 'halus', 'Tangannya sangat alusu.', 'kata sifat'),
(20, 2, 'mangngaji', 'mengaji', 'Anak-anak sedang mangngaji di masjid.', 'kata kerja'),
(21, 3, 'မင်္ဂလာပါ (mingalaba)', 'halo / selamat datang', 'Saat bertemu orang baru, mereka akan menyapa dengan “မင်္ဂလာပါ (mingalaba)”.', 'sapaan'),
(22, 3, 'ကျေးဇူးတင်ပါတယ် (kyayzu tin par tal)', 'terima kasih', 'Ia berkata “ကျေးဇူးတင်ပါတယ်” setelah menerima bantuan.', 'ungkapan'),
(23, 3, 'နေကောင်းလား (nei kaung la?)', 'apa kabar?', '“နေကောင်းလား?” digunakan untuk menanyakan kabar.', 'ungkapan'),
(24, 3, 'အိုး (oe)', 'air', 'Ia menuangkan အိုး ke dalam gelas.', 'kata benda'),
(25, 3, 'စား (sa)', 'makan', 'Mereka sedang စား bersama keluarga.', 'kata kerja'),
(26, 3, 'အိမ် (ein)', 'rumah', 'Keluarganya tinggal di အိမ် yang besar.', 'kata benda'),
(27, 3, 'ချစ် (chit)', 'cinta / sayang', 'Ia berkata bahwa ia ချစ် ibunya.', 'kata kerja'),
(28, 3, 'မြန်မာ (myanma)', 'Myanmar / orang Myanmar', 'သူက မြန်မာ လူတစ်ယောက် — ia adalah orang Myanmar.', 'kata benda'),
(29, 3, 'စာအုပ် (sa oak)', 'buku', 'Anak itu membaca စာအုပ် setiap malam.', 'kata benda'),
(30, 3, 'ပျော် (pyaw)', 'senang / bahagia', 'Ia merasa ပျော် setelah bertemu teman lama.', 'kata sifat'),
(31, 4, 'Maayong buntag', 'Selamat pagi', 'Ketika bertemu di pagi hari, mereka menyapa dengan “Maayong buntag!”.', 'sapaan'),
(32, 4, 'Salamat', 'Terima kasih', 'Ia mengucapkan “Salamat” setelah menerima bantuan.', 'ungkapan'),
(33, 4, 'Unsa imong ngalan?', 'Siapa namamu?', 'Saat berkenalan, ia bertanya “Unsa imong ngalan?”.', 'ungkapan'),
(34, 4, 'Tubig', 'Air', 'Palihog, hatagi ko ug tubig — Tolong berikan aku air.', 'kata benda'),
(35, 4, 'Kaon', 'Makan', 'Magkaon ta! — Ayo makan bersama.', 'kata kerja'),
(36, 4, 'Balay', 'Rumah', 'Ang among balay kay gamay pero limpyo. — Rumah kami kecil tapi bersih.', 'kata benda'),
(37, 4, 'Gugma', 'Cinta / Kasih sayang', 'Ang gugma sa ginikanan walay sukod. — Cinta orang tua tak terukur.', 'kata benda'),
(38, 4, 'Libro', 'Buku', 'Nagbasa siya ug libro matag gabii. — Ia membaca buku setiap malam.', 'kata benda'),
(39, 4, 'Gwapo / Gwapa', 'Tampan / Cantik', 'Gwapa kaayo siya karon! — Dia sangat cantik hari ini!', 'kata sifat'),
(40, 4, 'Kalipay', 'Kebahagiaan', 'Ang kalipay mao ang importante sa kinabuhi. — Kebahagiaan adalah hal penting dalam hidup.', 'kata benda'),
(41, 5, 'Buenos dias', 'Selamat pagi', 'Buenos dias, amigo! — Selamat pagi, teman!', 'sapaan'),
(42, 5, 'Gracias', 'Terima kasih', 'Gracias por tu ayuda. — Terima kasih atas bantuanmu.', 'ungkapan'),
(43, 5, 'Como estas?', 'Apa kabar?', 'Hola! Como estas? — Halo! Apa kabar?', 'ungkapan'),
(44, 5, 'Casa', 'Rumah', 'El casa de mi abuela ta grande. — Rumah nenekku besar.', 'kata benda'),
(45, 5, 'Agua', 'Air', 'Necesita yo agua. — Aku butuh air.', 'kata benda'),
(46, 5, 'Comer', 'Makan', 'Vamos a comer juntos. — Mari kita makan bersama.', 'kata kerja'),
(47, 5, 'Amor', 'Cinta', 'El amor ta dale fuerza. — Cinta memberi kekuatan.', 'kata benda'),
(48, 5, 'Libro', 'Buku', 'Tiene yo un libro nuevo. — Aku punya buku baru.', 'kata benda'),
(49, 5, 'Bonito / Bonita', 'Tampan / Cantik', 'Tu eres muy bonita. — Kamu sangat cantik.', 'kata sifat'),
(50, 5, 'Felicidad', 'Kebahagiaan', 'La felicidad ta viene del corazon. — Kebahagiaan datang dari hati.', 'kata benda'),
(51, 6, 'Maayong aga', 'Selamat pagi', 'Maayong aga sa imo! — Selamat pagi untukmu!', 'sapaan'),
(52, 6, 'Salamat', 'Terima kasih', 'Salamat sa bulig mo. — Terima kasih atas bantuanmu.', 'ungkapan'),
(53, 6, 'Kamusta ka?', 'Apa kabar?', 'Kamusta ka subong? — Apa kabar hari ini?', 'ungkapan'),
(54, 6, 'Balay', 'Rumah', 'Daku ang balay nila. — Rumah mereka besar.', 'kata benda'),
(55, 6, 'Tubig', 'Air', 'Mangayo ako tubig. — Aku minta air.', 'kata benda'),
(56, 6, 'Káon', 'Makan', 'Magkáon kita sang panyapon. — Mari kita makan malam.', 'kata kerja'),
(57, 6, 'Gugma', 'Cinta', 'Ang gugma wala sing katapusan. — Cinta tak ada akhirnya.', 'kata benda'),
(58, 6, 'Libro', 'Buku', 'May ara ako sang libro bago. — Aku punya buku baru.', 'kata benda'),
(59, 6, 'Gwapo / Gwapa', 'Tampan / Cantik', 'Gwapa gid siya. — Dia sangat cantik.', 'kata sifat'),
(60, 6, 'Kalipay', 'Kebahagiaan', 'Ang kalipay naga halin sa sulod sang tagipusuon. — Kebahagiaan berasal dari hati.', 'kata benda'),
(61, 7, 'Naimbag a bigat', 'Selamat pagi', 'Naimbag a bigat kanyam! — Selamat pagi untukmu!', 'sapaan'),
(62, 7, 'Agyamanak', 'Terima kasih', 'Agyamanak iti tulong mo. — Terima kasih atas bantuanmu.', 'ungkapan'),
(63, 7, 'Kumusta ka?', 'Apa kabar?', 'Kumusta ka ita nga aldaw? — Apa kabar hari ini?', 'ungkapan'),
(64, 7, 'Balay', 'Rumah', 'Napintas ti balay da. — Rumah mereka indah.', 'kata benda'),
(65, 7, 'Danum', 'Air', 'Adda danum iti baso. — Ada air di gelas.', 'kata benda'),
(66, 7, 'Mangan', 'Makan', 'Mangan tayo! — Mari kita makan!', 'kata kerja'),
(67, 7, 'Ayat', 'Cinta', 'Ti ayat ket naindaklan a regalo. — Cinta adalah hadiah yang besar.', 'kata benda'),
(68, 7, 'Libro', 'Buku', 'Adda libro a baro kaniak. — Aku punya buku baru.', 'kata benda'),
(69, 7, 'Naimas', 'Enak / lezat', 'Naimas daytoy nga makan. — Makanan ini enak.', 'kata sifat'),
(70, 7, 'Ragsak', 'Kebahagiaan', 'Ti ragsak ket adda iti puspuso. — Kebahagiaan ada di dalam hati.', 'kata benda'),
(71, 8, 'Selamat pagi', 'Good morning', 'Selamat pagi, semoga harimu menyenangkan!', 'sapaan'),
(72, 8, 'Terima kasih', 'Thank you', 'Terima kasih atas bantuanmu.', 'ungkapan'),
(73, 8, 'Rumah', 'House', 'Saya tinggal di rumah besar di kota.', 'kata benda'),
(74, 8, 'Air', 'Water', 'Saya minum segelas air putih.', 'kata benda'),
(75, 8, 'Makan', 'Eat', 'Kami makan bersama di dapur.', 'kata kerja'),
(76, 8, 'Cinta', 'Love', 'Cinta membuat hidup lebih indah.', 'kata benda'),
(77, 8, 'Buku', 'Book', 'Saya membaca buku tentang sejarah.', 'kata benda'),
(78, 8, 'Enak', 'Delicious', 'Makanan di warung itu sangat enak.', 'kata sifat'),
(79, 8, 'Bahagia', 'Happy', 'Aku merasa sangat bahagia hari ini.', 'kata sifat'),
(80, 8, 'Belajar', 'Study / Learn', 'Dia rajin belajar setiap malam.', 'kata kerja'),
(81, 9, 'Sugeng enjing', 'Selamat pagi', 'Sugeng enjing, piye kabarmu dina iki?', 'sapaan'),
(82, 9, 'Matur nuwun', 'Terima kasih', 'Matur nuwun sanget wis mbantu aku.', 'ungkapan'),
(83, 9, 'Omah', 'Rumah', 'Aku bali menyang omah sakwise makaryo.', 'kata benda'),
(84, 9, 'Banyu', 'Air', 'Aja lali ngombe banyu saben dina.', 'kata benda'),
(85, 9, 'Mangan', 'Makan', 'Kita mangan bareng ing pawon.', 'kata kerja'),
(86, 9, 'Tresna', 'Cinta', 'Tresna iku kudu jujur lan tulus.', 'kata benda'),
(87, 9, 'Buku', 'Buku', 'Aku tuku buku anyar ing pasar.', 'kata benda'),
(88, 9, 'Enak', 'Enak / Lezat', 'Sego kucing iki enak tenan.', 'kata sifat'),
(89, 9, 'Seneng', 'Bahagia / Senang', 'Aku seneng yen kowe rawuh.', 'kata sifat'),
(90, 9, 'Sinau', 'Belajar', 'Anak iku rajin sinau saben sore.', 'kata kerja'),
(91, 10, 'Ta bluh', 'Halo / Hai', 'Ta bluh! Na ghoe gha?', 'sapaan'),
(92, 10, 'Ghaw ler', 'Terima kasih', 'Ghaw ler thra! Koe blu doh.', 'ungkapan'),
(93, 10, 'Htee', 'Air', 'Htee tha weh le?', 'kata benda'),
(94, 10, 'Ta hku', 'Makan', 'A hku ta hku ta mo.', 'kata kerja'),
(95, 10, 'Ta kho', 'Tidur', 'Na ta kho deh a ti.', 'kata kerja'),
(96, 10, 'Ta thu', 'Belajar', 'Ta thu ghoe gha thra.', 'kata kerja'),
(97, 10, 'Ta poe', 'Pergi', 'A poe ta gha mu.', 'kata kerja'),
(98, 10, 'Bluh', 'Baik', 'Na bluh ta mo.', 'kata sifat'),
(99, 10, 'Ta kloh', 'Rumah', 'Ta kloh ghoe ta pwa.', 'kata benda'),
(100, 10, 'Ta klo', 'Cinta', 'Ta klo deh ta blu.', 'kata benda'),
(101, 11, 'សួស្តី (suosdei)', 'Halo / Hai', 'សួស្តី! អ្នកសុខសប្បាយទេ?', 'sapaan'),
(102, 11, 'អរគុណ (ar kun)', 'Terima kasih', 'អរគុណច្រើនសម្រាប់ជំនួយ។', 'ungkapan'),
(103, 11, 'ទឹក (tœk)', 'Air', 'ខ្ញុំចង់ផឹកទឹក។', 'kata benda'),
(104, 11, 'បាយ (bay)', 'Nasi / Makanan', 'ខ្ញុំកំពុងញាំបាយ។', 'kata benda'),
(105, 11, 'គេង (keng)', 'Tidur', 'កុមារគេងលក់។', 'kata kerja'),
(106, 11, 'រៀន (rien)', 'Belajar', 'សិស្សរៀនភាសាខ្មែរ។', 'kata kerja'),
(107, 11, 'ទៅ (tov)', 'Pergi', 'ខ្ញុំទៅសាលារៀន។', 'kata kerja'),
(108, 11, 'ល្អ (laor)', 'Baik / Bagus', 'ថ្ងៃនេះអាកាសល្អណាស់។', 'kata sifat'),
(109, 11, 'ផ្ទះ (phteah)', 'Rumah', 'ផ្ទះរបស់ខ្ញុំស្អាត។', 'kata benda'),
(110, 11, 'ស្រលាញ់ (sralanh)', 'Cinta / Menyukai', 'ខ្ញុំនឹកស្រលាញ់អ្នក។', 'kata kerja'),
(111, 12, 'ສະບາຍດີ (sabaidee)', 'Halo / Hai', 'ສະບາຍດີ! ເຈົ້າສະບາຍດີບໍ?', 'sapaan'),
(112, 12, 'ຂອບໃຈ (khop chai)', 'Terima kasih', 'ຂອບໃຈຫຼາຍສໍາລັບຄວາມຊ່ວຍເຫຼືອ.', 'ungkapan'),
(113, 12, 'ນ້ຳ (nam)', 'Air', 'ຂ້ອຍຢາກດື່ມນ້ຳ.', 'kata benda'),
(114, 12, 'ເຂົ້າ (khao)', 'Nasi / Makanan', 'ຂ້ອຍກຳລັງກິນເຂົ້າ.', 'kata benda'),
(115, 12, 'ນອນ (non)', 'Tidur', 'ເດັກນ້ອຍນອນແລ້ວ.', 'kata kerja'),
(116, 12, 'ຮຽນ (hian)', 'Belajar', 'ນັກຮຽນກຳລັງຮຽນພາສາລາວ.', 'kata kerja'),
(117, 12, 'ໄປ (pai)', 'Pergi', 'ຂ້ອຍໄປໂຮງຮຽນ.', 'kata kerja'),
(118, 12, 'ດີ (dee)', 'Baik / Bagus', 'ອາກາດມື້ນີ້ດີຫຼາຍ.', 'kata sifat'),
(119, 12, 'ເຮືອນ (huean)', 'Rumah', 'ເຮືອນຂອງຂ້ອຍໃຫຍ່.', 'kata benda'),
(120, 12, 'ຮັກ (hak)', 'Cinta / Menyukai', 'ຂ້ອຍຮັກເຈົ້າ.', 'kata kerja'),
(121, 3, 'မင်္ဂလာပါ (mingalaba)', 'halo / selamat datang', 'Saat bertemu orang baru, mereka akan menyapa dengan “မင်္ဂလာပါ (mingalaba)”.', 'sapaan'),
(122, 3, 'ကျေးဇူးတင်ပါတယ် (kyayzu tin par tal)', 'terima kasih', 'Ia berkata “ကျေးဇူးတင်ပါတယ်” setelah menerima bantuan.', 'ungkapan'),
(123, 3, 'နေကောင်းလား (nei kaung la?)', 'apa kabar?', '“နေကောင်းလား?” digunakan untuk menanyakan kabar.', 'ungkapan'),
(124, 3, 'အိုး (oe)', 'air', 'Ia menuangkan အိုး ke dalam gelas.', 'kata benda'),
(125, 3, 'စား (sa)', 'makan', 'Mereka sedang စား bersama keluarga.', 'kata kerja'),
(126, 3, 'အိမ် (ein)', 'rumah', 'Keluarganya tinggal di အိမ် yang besar.', 'kata benda'),
(127, 3, 'ချစ် (chit)', 'cinta / sayang', 'Ia berkata bahwa ia ချစ် ibunya.', 'kata kerja'),
(128, 3, 'မြန်မာ (myanma)', 'Myanmar / orang Myanmar', 'သူက မြန်မာ လူတစ်ယောက် — ia adalah orang Myanmar.', 'kata benda'),
(129, 3, 'စာအုပ် (sa oak)', 'buku', 'Anak itu membaca စာအုပ် setiap malam.', 'kata benda'),
(130, 3, 'ပျော် (pyaw)', 'senang / bahagia', 'Ia merasa ပျော် setelah bertemu teman lama.', 'kata sifat'),
(131, 4, 'Maayong buntag', 'Selamat pagi', 'Ketika bertemu di pagi hari, mereka menyapa dengan “Maayong buntag!”.', 'sapaan'),
(132, 4, 'Salamat', 'Terima kasih', 'Ia mengucapkan “Salamat” setelah menerima bantuan.', 'ungkapan'),
(133, 4, 'Unsa imong ngalan?', 'Siapa namamu?', 'Saat berkenalan, ia bertanya “Unsa imong ngalan?”.', 'ungkapan'),
(134, 4, 'Tubig', 'Air', 'Palihog, hatagi ko ug tubig — Tolong berikan aku air.', 'kata benda'),
(135, 4, 'Kaon', 'Makan', 'Magkaon ta! — Ayo makan bersama.', 'kata kerja'),
(136, 4, 'Balay', 'Rumah', 'Ang among balay kay gamay pero limpyo. — Rumah kami kecil tapi bersih.', 'kata benda'),
(137, 4, 'Gugma', 'Cinta / Kasih sayang', 'Ang gugma sa ginikanan walay sukod. — Cinta orang tua tak terukur.', 'kata benda'),
(138, 4, 'Libro', 'Buku', 'Nagbasa siya ug libro matag gabii. — Ia membaca buku setiap malam.', 'kata benda'),
(139, 4, 'Gwapo / Gwapa', 'Tampan / Cantik', 'Gwapa kaayo siya karon! — Dia sangat cantik hari ini!', 'kata sifat'),
(140, 4, 'Kalipay', 'Kebahagiaan', 'Ang kalipay mao ang importante sa kinabuhi. — Kebahagiaan adalah hal penting dalam hidup.', 'kata benda'),
(141, 5, 'Buenos dias', 'Selamat pagi', 'Buenos dias, amigo! — Selamat pagi, teman!', 'sapaan'),
(142, 5, 'Gracias', 'Terima kasih', 'Gracias por tu ayuda. — Terima kasih atas bantuanmu.', 'ungkapan'),
(143, 5, 'Como estas?', 'Apa kabar?', 'Hola! Como estas? — Halo! Apa kabar?', 'ungkapan'),
(144, 5, 'Casa', 'Rumah', 'El casa de mi abuela ta grande. — Rumah nenekku besar.', 'kata benda'),
(145, 5, 'Agua', 'Air', 'Necesita yo agua. — Aku butuh air.', 'kata benda'),
(146, 5, 'Comer', 'Makan', 'Vamos a comer juntos. — Mari kita makan bersama.', 'kata kerja'),
(147, 5, 'Amor', 'Cinta', 'El amor ta dale fuerza. — Cinta memberi kekuatan.', 'kata benda'),
(148, 5, 'Libro', 'Buku', 'Tiene yo un libro nuevo. — Aku punya buku baru.', 'kata benda'),
(149, 5, 'Bonito / Bonita', 'Tampan / Cantik', 'Tu eres muy bonita. — Kamu sangat cantik.', 'kata sifat'),
(150, 5, 'Felicidad', 'Kebahagiaan', 'La felicidad ta viene del corazon. — Kebahagiaan datang dari hati.', 'kata benda'),
(151, 6, 'Maayong aga', 'Selamat pagi', 'Maayong aga sa imo! — Selamat pagi untukmu!', 'sapaan'),
(152, 6, 'Salamat', 'Terima kasih', 'Salamat sa bulig mo. — Terima kasih atas bantuanmu.', 'ungkapan'),
(153, 6, 'Kamusta ka?', 'Apa kabar?', 'Kamusta ka subong? — Apa kabar hari ini?', 'ungkapan'),
(154, 6, 'Balay', 'Rumah', 'Daku ang balay nila. — Rumah mereka besar.', 'kata benda'),
(155, 6, 'Tubig', 'Air', 'Mangayo ako tubig. — Aku minta air.', 'kata benda'),
(156, 6, 'Káon', 'Makan', 'Magkáon kita sang panyapon. — Mari kita makan malam.', 'kata kerja'),
(157, 6, 'Gugma', 'Cinta', 'Ang gugma wala sing katapusan. — Cinta tak ada akhirnya.', 'kata benda'),
(158, 6, 'Libro', 'Buku', 'May ara ako sang libro bago. — Aku punya buku baru.', 'kata benda'),
(159, 6, 'Gwapo / Gwapa', 'Tampan / Cantik', 'Gwapa gid siya. — Dia sangat cantik.', 'kata sifat'),
(160, 6, 'Kalipay', 'Kebahagiaan', 'Ang kalipay naga halin sa sulod sang tagipusuon. — Kebahagiaan berasal dari hati.', 'kata benda'),
(161, 7, 'Naimbag a bigat', 'Selamat pagi', 'Naimbag a bigat kanyam! — Selamat pagi untukmu!', 'sapaan'),
(162, 7, 'Agyamanak', 'Terima kasih', 'Agyamanak iti tulong mo. — Terima kasih atas bantuanmu.', 'ungkapan'),
(163, 7, 'Kumusta ka?', 'Apa kabar?', 'Kumusta ka ita nga aldaw? — Apa kabar hari ini?', 'ungkapan'),
(164, 7, 'Balay', 'Rumah', 'Napintas ti balay da. — Rumah mereka indah.', 'kata benda'),
(165, 7, 'Danum', 'Air', 'Adda danum iti baso. — Ada air di gelas.', 'kata benda'),
(166, 7, 'Mangan', 'Makan', 'Mangan tayo! — Mari kita makan!', 'kata kerja'),
(167, 7, 'Ayat', 'Cinta', 'Ti ayat ket naindaklan a regalo. — Cinta adalah hadiah yang besar.', 'kata benda'),
(168, 7, 'Libro', 'Buku', 'Adda libro a baro kaniak. — Aku punya buku baru.', 'kata benda'),
(169, 7, 'Naimas', 'Enak / lezat', 'Naimas daytoy nga makan. — Makanan ini enak.', 'kata sifat'),
(170, 7, 'Ragsak', 'Kebahagiaan', 'Ti ragsak ket adda iti puspuso. — Kebahagiaan ada di dalam hati.', 'kata benda'),
(171, 8, 'Selamat pagi', 'Good morning', 'Selamat pagi, semoga harimu menyenangkan!', 'sapaan'),
(172, 8, 'Terima kasih', 'Thank you', 'Terima kasih atas bantuanmu.', 'ungkapan'),
(173, 8, 'Rumah', 'House', 'Saya tinggal di rumah besar di kota.', 'kata benda'),
(174, 8, 'Air', 'Water', 'Saya minum segelas air putih.', 'kata benda'),
(175, 8, 'Makan', 'Eat', 'Kami makan bersama di dapur.', 'kata kerja'),
(176, 8, 'Cinta', 'Love', 'Cinta membuat hidup lebih indah.', 'kata benda'),
(177, 8, 'Buku', 'Book', 'Saya membaca buku tentang sejarah.', 'kata benda'),
(178, 8, 'Enak', 'Delicious', 'Makanan di warung itu sangat enak.', 'kata sifat'),
(179, 8, 'Bahagia', 'Happy', 'Aku merasa sangat bahagia hari ini.', 'kata sifat'),
(180, 8, 'Belajar', 'Study / Learn', 'Dia rajin belajar setiap malam.', 'kata kerja'),
(181, 9, 'Sugeng enjing', 'Selamat pagi', 'Sugeng enjing, piye kabarmu dina iki?', 'sapaan'),
(182, 9, 'Matur nuwun', 'Terima kasih', 'Matur nuwun sanget wis mbantu aku.', 'ungkapan'),
(183, 9, 'Omah', 'Rumah', 'Aku bali menyang omah sakwise makaryo.', 'kata benda'),
(184, 9, 'Banyu', 'Air', 'Aja lali ngombe banyu saben dina.', 'kata benda'),
(185, 9, 'Mangan', 'Makan', 'Kita mangan bareng ing pawon.', 'kata kerja'),
(186, 9, 'Tresna', 'Cinta', 'Tresna iku kudu jujur lan tulus.', 'kata benda'),
(187, 9, 'Buku', 'Buku', 'Aku tuku buku anyar ing pasar.', 'kata benda'),
(188, 9, 'Enak', 'Enak / Lezat', 'Sego kucing iki enak tenan.', 'kata sifat'),
(189, 9, 'Seneng', 'Bahagia / Senang', 'Aku seneng yen kowe rawuh.', 'kata sifat'),
(190, 9, 'Sinau', 'Belajar', 'Anak iku rajin sinau saben sore.', 'kata kerja'),
(191, 10, 'Ta bluh', 'Halo / Hai', 'Ta bluh! Na ghoe gha?', 'sapaan'),
(192, 10, 'Ghaw ler', 'Terima kasih', 'Ghaw ler thra! Koe blu doh.', 'ungkapan'),
(193, 10, 'Htee', 'Air', 'Htee tha weh le?', 'kata benda'),
(194, 10, 'Ta hku', 'Makan', 'A hku ta hku ta mo.', 'kata kerja'),
(195, 10, 'Ta kho', 'Tidur', 'Na ta kho deh a ti.', 'kata kerja'),
(196, 10, 'Ta thu', 'Belajar', 'Ta thu ghoe gha thra.', 'kata kerja'),
(197, 10, 'Ta poe', 'Pergi', 'A poe ta gha mu.', 'kata kerja'),
(198, 10, 'Bluh', 'Baik', 'Na bluh ta mo.', 'kata sifat'),
(199, 10, 'Ta kloh', 'Rumah', 'Ta kloh ghoe ta pwa.', 'kata benda'),
(200, 10, 'Ta klo', 'Cinta', 'Ta klo deh ta blu.', 'kata benda'),
(201, 11, 'សួស្តី (suosdei)', 'Halo / Hai', 'សួស្តី! អ្នកសុខសប្បាយទេ?', 'sapaan'),
(202, 11, 'អរគុណ (ar kun)', 'Terima kasih', 'អរគុណច្រើនសម្រាប់ជំនួយ។', 'ungkapan'),
(203, 11, 'ទឹក (tœk)', 'Air', 'ខ្ញុំចង់ផឹកទឹក។', 'kata benda'),
(204, 11, 'បាយ (bay)', 'Nasi / Makanan', 'ខ្ញុំកំពុងញាំបាយ។', 'kata benda'),
(205, 11, 'គេង (keng)', 'Tidur', 'កុមារគេងលក់។', 'kata kerja'),
(206, 11, 'រៀន (rien)', 'Belajar', 'សិស្សរៀនភាសាខ្មែរ។', 'kata kerja'),
(207, 11, 'ទៅ (tov)', 'Pergi', 'ខ្ញុំទៅសាលារៀន។', 'kata kerja'),
(208, 11, 'ល្អ (laor)', 'Baik / Bagus', 'ថ្ងៃនេះអាកាសល្អណាស់។', 'kata sifat'),
(209, 11, 'ផ្ទះ (phteah)', 'Rumah', 'ផ្ទះរបស់ខ្ញុំស្អាត។', 'kata benda'),
(210, 11, 'ស្រលាញ់ (sralanh)', 'Cinta / Menyukai', 'ខ្ញុំនឹកស្រលាញ់អ្នក។', 'kata kerja'),
(211, 12, 'ສະບາຍດີ (sabaidee)', 'Halo / Hai', 'ສະບາຍດີ! ເຈົ້າສະບາຍດີບໍ?', 'sapaan'),
(212, 12, 'ຂອບໃຈ (khop chai)', 'Terima kasih', 'ຂອບໃຈຫຼາຍສໍາລັບຄວາມຊ່ວຍເຫຼືອ.', 'ungkapan'),
(213, 12, 'ນ້ຳ (nam)', 'Air', 'ຂ້ອຍຢາກດື່ມນ້ຳ.', 'kata benda'),
(214, 12, 'ເຂົ້າ (khao)', 'Nasi / Makanan', 'ຂ້ອຍກຳລັງກິນເຂົ້າ.', 'kata benda'),
(215, 12, 'ນອນ (non)', 'Tidur', 'ເດັກນ້ອຍນອນແລ້ວ.', 'kata kerja'),
(216, 12, 'ຮຽນ (hian)', 'Belajar', 'ນັກຮຽນກຳລັງຮຽນພາສາລາວ.', 'kata kerja'),
(217, 12, 'ໄປ (pai)', 'Pergi', 'ຂ້ອຍໄປໂຮງຮຽນ.', 'kata kerja'),
(218, 12, 'ດີ (dee)', 'Baik / Bagus', 'ອາກາດມື້ນີ້ດີຫຼາຍ.', 'kata sifat'),
(219, 12, 'ເຮືອນ (huean)', 'Rumah', 'ເຮືອນຂອງຂ້ອຍໃຫຍ່.', 'kata benda'),
(220, 12, 'ຮັກ (hak)', 'Cinta / Menyukai', 'ຂ້ອຍຮັກເຈົ້າ.', 'kata kerja'),
(221, 13, 'Selamat', 'Halo / Salam', 'Selamat pagi kepada semua.', 'sapaan'),
(222, 13, 'Makan', 'Makan', 'Saya sedang makan nasi.', 'kata kerja'),
(223, 13, 'Air', 'Zat cair', 'Saya minum air putih.', 'kata benda'),
(224, 13, 'Rumah', 'Tempat tinggal manusia', 'Rumah saya terletak di Kuala Lumpur.', 'kata benda'),
(225, 13, 'Kawan', 'Teman', 'Dia adalah kawan baik saya.', 'kata benda'),
(226, 13, 'Cantik', 'Indah atau menarik', 'Pemandangan di sana sangat cantik.', 'kata sifat'),
(227, 13, 'Buku', 'Kumpulan lembaran tulisan', 'Saya membaca buku cerita.', 'kata benda'),
(228, 13, 'Tidur', 'Beristirahat dengan mata tertutup', 'Anak itu sudah tidur.', 'kata kerja'),
(229, 13, 'Belajar', 'Proses memperoleh ilmu', 'Kita harus belajar dengan tekun.', 'kata kerja'),
(230, 13, 'Laut', 'Perairan luas', 'Laut di Sabah sangat jernih.', 'kata benda'),
(231, 14, 'Kapoon', 'Terima kasih', 'Kapoon sa tabang mo.', 'ungkapan'),
(232, 14, 'Mopiya', 'Baik', 'Mopiya so kandatu.', 'kata sifat'),
(233, 14, 'Bae', 'Perempuan', 'So bae na mapiya.', 'kata benda'),
(234, 14, 'Pang', 'Makan', 'Mapang ako ko kanin.', 'kata kerja'),
(235, 14, 'Wato', 'Air', 'Nangayo ako wato.', 'kata benda'),
(236, 14, 'Balay', 'Rumah', 'Andoon ako sa balay.', 'kata benda'),
(237, 14, 'Lawa', 'Indah', 'Lawa so Marawi.', 'kata sifat'),
(238, 14, 'Skoy', 'Sekolah', 'Miyadto ako sa skoy.', 'kata benda'),
(239, 14, 'Tulog', 'Tidur', 'Tulog na ako.', 'kata kerja'),
(240, 14, 'Pamilyo', 'Keluarga', 'Mahigugma ako sa pamilyo ko.', 'kata benda'),
(241, 15, 'Salam', 'Damai / Salam pembuka', 'Salam sa inyo tanan.', 'sapaan'),
(242, 15, 'Kanduli', 'Syukuran', 'May kanduli kami bukas.', 'kata benda'),
(243, 15, 'Datu', 'Pemimpin', 'Ang datu nagdesisyon.', 'kata benda'),
(244, 15, 'Balay', 'Rumah', 'Nasa balay ako.', 'kata benda'),
(245, 15, 'Bai', 'Perempuan', 'Ang bai mapia.', 'kata benda'),
(246, 15, 'Tubig', 'Air', 'Inom ka tubig.', 'kata benda'),
(247, 15, 'Tulog', 'Tidur', 'Matulog na kita.', 'kata kerja'),
(248, 15, 'Kaon', 'Makan', 'Kaon ta sa kusina.', 'kata kerja'),
(249, 15, 'Pamilya', 'Keluarga', 'Ang pamilya ko kompleto.', 'kata benda'),
(250, 15, 'Bata', 'Anak', 'Ang bata nagdula.', 'kata benda'),
(251, 16, 'Naung', 'Air', 'Naung khui na.', 'kata benda'),
(252, 16, 'Hlei', 'Api', 'Hlei khap na.', 'kata benda'),
(253, 16, 'Taw', 'Orang', 'Taw kan hnyang.', 'kata benda'),
(254, 16, 'Ko', 'Rumah', 'Ko nang nangai.', 'kata benda'),
(255, 16, 'Sot', 'Makan', 'Sot na rice.', 'kata kerja'),
(256, 16, 'Kan', 'Tidur', 'Kan pan khui.', 'kata kerja'),
(257, 16, 'Mon', 'Bahasa Mon', 'Mon taw kan lo.', 'kata benda'),
(258, 16, 'Pya', 'Baik', 'Pya hnyang.', 'kata sifat'),
(259, 16, 'Chit', 'Cinta', 'Chit taw mon.', 'kata kerja'),
(260, 16, 'Sang', 'Belajar', 'Sang na mon.', 'kata kerja'),
(261, 17, 'Sabaidee', 'Halo / Salam', 'Sabaidee, khun pen yang dai?', 'sapaan'),
(262, 17, 'Nam', 'Air', 'Kho nam noy.', 'kata benda'),
(263, 17, 'Khao', 'Makan nasi', 'Chan kin khao leo.', 'kata kerja'),
(264, 17, 'Ban', 'Rumah', 'Ban khong chan nyai.', 'kata benda'),
(265, 17, 'Ngon', 'Tidur', 'Chan yak ngon.', 'kata kerja'),
(266, 17, 'Khon', 'Orang', 'Khon nan dii.', 'kata benda'),
(267, 17, 'Dee', 'Baik', 'Khun dii mak.', 'kata sifat'),
(268, 17, 'Namfon', 'Hujan', 'Namfon tok leo.', 'kata benda'),
(269, 17, 'Nai', 'Dalam', 'Ban nai muang.', 'kata depan'),
(270, 17, 'Rak', 'Cinta', 'Chan rak khun.', 'kata kerja'),
(271, 18, 'Kamusta', 'Halo', 'Kamusta ka?', 'sapaan'),
(272, 18, 'Tubig', 'Air', 'Uminom ako ng tubig.', 'kata benda'),
(273, 18, 'Pagkain', 'Makanan', 'Masarap ang pagkain.', 'kata benda'),
(274, 18, 'Bahay', 'Rumah', 'Malaki ang bahay nila.', 'kata benda'),
(275, 18, 'Kaibigan', 'Teman', 'Siya ay mabuting kaibigan.', 'kata benda'),
(276, 18, 'Maganda', 'Cantik / Indah', 'Maganda ang tanawin.', 'kata sifat'),
(277, 18, 'Aklat', 'Buku', 'Binasa ko ang aklat.', 'kata benda'),
(278, 18, 'Tulog', 'Tidur', 'Matulog na tayo.', 'kata kerja'),
(279, 18, 'Aral', 'Belajar', 'Mag-aral kang mabuti.', 'kata kerja'),
(280, 18, 'Dagat', 'Laut', 'Naligo kami sa dagat.', 'kata benda'),
(281, 19, 'Sawasdee', 'Halo', 'Sawasdee krub!', 'sapaan'),
(282, 19, 'Nam', 'Air', 'Nam yen maak.', 'kata benda'),
(283, 19, 'Kin', 'Makan', 'Chan kin khao.', 'kata kerja'),
(284, 19, 'Ban', 'Rumah', 'Ban yuu nai Chiang Mai.', 'kata benda'),
(285, 19, 'Khon', 'Orang', 'Khon nan suay.', 'kata benda'),
(286, 19, 'Suay', 'Cantik', 'Khon suay mak.', 'kata sifat'),
(287, 19, 'Norn', 'Tidur', 'Chan ja norn laew.', 'kata kerja'),
(288, 19, 'Rian', 'Belajar', 'Dek rian pai rong rian.', 'kata kerja'),
(289, 19, 'Khru', 'Guru', 'Khru chan dee mak.', 'kata benda'),
(290, 19, 'Thale', 'Laut', 'Thale suay mak.', 'kata benda'),
(291, 20, 'Xin chào', 'Halo', 'Xin chào, bạn khỏe không?', 'sapaan'),
(292, 20, 'Nước', 'Air', 'Tôi uống nước.', 'kata benda'),
(293, 20, 'Ăn', 'Makan', 'Tôi ăn cơm.', 'kata kerja'),
(294, 20, 'Nhà', 'Rumah', 'Nhà tôi ở Hà Nội.', 'kata benda'),
(295, 20, 'Bạn', 'Teman', 'Bạn của tôi tốt lắm.', 'kata benda'),
(296, 20, 'Đẹp', 'Cantik / Indah', 'Cảnh rất đẹp.', 'kata sifat'),
(297, 20, 'Ngủ', 'Tidur', 'Tôi muốn ngủ.', 'kata kerja'),
(298, 20, 'Học', 'Belajar', 'Tôi học tiếng Việt.', 'kata kerja'),
(299, 20, 'Biển', 'Laut', 'Chúng tôi đi biển.', 'kata benda'),
(300, 20, 'Gia đình', 'Keluarga', 'Gia đình tôi hạnh phúc.', 'kata benda'),
(301, 21, 'Kumusta', 'Halo', 'Kumusta ka na?', 'sapaan'),
(302, 21, 'Tubig', 'Air', 'Inom ka tubig.', 'kata benda'),
(303, 21, 'Balay', 'Rumah', 'Dako an balay.', 'kata benda'),
(304, 21, 'Kaon', 'Makan', 'Kaon kita yana.', 'kata kerja'),
(305, 21, 'Tulog', 'Tidur', 'Tulog na ako.', 'kata kerja'),
(306, 21, 'Kaibigan', 'Teman', 'An akon kaibigan maupay.', 'kata benda'),
(307, 21, 'Bata', 'Anak', 'An bata nagdula.', 'kata benda'),
(308, 21, 'Pamilya', 'Keluarga', 'Mahal ko an akon pamilya.', 'kata benda'),
(309, 21, 'Lawa', 'Indah', 'Lawa an tanom.', 'kata sifat'),
(310, 21, 'Libro', 'Buku', 'Basaha an libro.', 'kata benda'),
(311, 22, 'Bondia', 'Selamat pagi', 'Bondia maun.', 'sapaan'),
(312, 22, 'Bee', 'Air', 'Hau hemu bee.', 'kata benda'),
(313, 22, 'Han', 'Makan', 'Hau han etu.', 'kata kerja'),
(314, 22, 'Uma', 'Rumah', 'Uma hau iha Dili.', 'kata benda'),
(315, 22, 'Kolega', 'Teman', 'Nia kolega diak.', 'kata benda'),
(316, 22, 'Matan', 'Mata', 'Matan hau moras.', 'kata benda'),
(317, 22, 'Toos', 'Tidur', 'Hau hakarak toos.', 'kata kerja'),
(318, 22, 'Aprende', 'Belajar', 'Nia aprende Tetun.', 'kata kerja'),
(319, 22, 'Tasi', 'Laut', 'Tasi ne’e boot.', 'kata benda'),
(320, 22, 'Família', 'Keluarga', 'Família hau kontenti.', 'kata benda'),
(321, 23, 'La', 'Air', 'La ga lu.', 'kata benda'),
(322, 23, 'Nai', 'Rumah', 'Nai gu la.', 'kata benda'),
(323, 23, 'Me', 'Orang', 'Me shang la.', 'kata benda'),
(324, 23, 'Da', 'Makan', 'Da gu shan.', 'kata kerja'),
(325, 23, 'Nga', 'Tidur', 'Nga mu la.', 'kata kerja'),
(326, 23, 'Sa', 'Teman', 'Sa gu la.', 'kata benda'),
(327, 23, 'Hla', 'Bahasa', 'Wa hla de gu.', 'kata benda'),
(328, 23, 'Pi', 'Baik', 'Me pi la.', 'kata sifat'),
(329, 23, 'Ta', 'Belajar', 'Me ta Wa hla.', 'kata kerja'),
(330, 23, 'Lai', 'Cinta', 'Me lai gu.', 'kata kerja');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kosakatas`
--

CREATE TABLE `kosakatas` (
  `id` bigint UNSIGNED NOT NULL,
  `bahasa_id` bigint UNSIGNED NOT NULL,
  `kata_asli` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terjemahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `makna` text COLLATE utf8mb4_unicode_ci,
  `contoh_penggunaan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_26_144102_create_admins_table', 1),
(5, '2025_10_26_144114_create_bahasas_table', 1),
(6, '2025_10_26_144121_create_kosakatas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dyJlR2vSA4Ts6lJcwKIe1rz79XkIApXOLD3FD42l', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRDR0Mk5iNDlyVDhaZlpNNXlYMXJqbUFFV1FzQ0Y1WHJPZnJqMWJ1bCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1761860562),
('i528rgdYjr96o1ZxozglAzkIM54I9FCmoPt2XPQr', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkFDc1ZQaXdMUjVNendNOG1kVVNHZ2xtYjM0UUZFeVhoY0didlRkQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMzt9', 1761861117),
('I5jNvtSkLDLP77CmYtdguB1HQqsGYmVeDe3tfYpo', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWHJyeEYzaFVvQWVta1NHM1VtUEw1cjhsMGpwUU1kQXNqa0JZbHBoTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9iYWhhc2EvMi9pc2lfa2FtdXMiO3M6NToicm91dGUiO3M6MTU6ImlzaV9rYW11cy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Njt9', 1761502379);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `bahasa`
--
ALTER TABLE `bahasa`
  ADD PRIMARY KEY (`id_bahasa`);

--
-- Indexes for table `bahasas`
--
ALTER TABLE `bahasas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bahasas_nama_bahasa_unique` (`nama_bahasa`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id_dataset`),
  ADD KEY `id_bahasa` (`id_bahasa`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `isi_kamus`
--
ALTER TABLE `isi_kamus`
  ADD PRIMARY KEY (`id_kata`),
  ADD KEY `id_bahasa` (`id_bahasa`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kosakatas`
--
ALTER TABLE `kosakatas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kosakatas_bahasa_id_foreign` (`bahasa_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bahasa`
--
ALTER TABLE `bahasa`
  MODIFY `id_bahasa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bahasas`
--
ALTER TABLE `bahasas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id_dataset` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `isi_kamus`
--
ALTER TABLE `isi_kamus`
  MODIFY `id_kata` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kosakatas`
--
ALTER TABLE `kosakatas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dataset`
--
ALTER TABLE `dataset`
  ADD CONSTRAINT `dataset_ibfk_1` FOREIGN KEY (`id_bahasa`) REFERENCES `bahasa` (`id_bahasa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `isi_kamus`
--
ALTER TABLE `isi_kamus`
  ADD CONSTRAINT `isi_kamus_ibfk_1` FOREIGN KEY (`id_bahasa`) REFERENCES `bahasa` (`id_bahasa`);

--
-- Constraints for table `kosakatas`
--
ALTER TABLE `kosakatas`
  ADD CONSTRAINT `kosakatas_bahasa_id_foreign` FOREIGN KEY (`bahasa_id`) REFERENCES `bahasas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
