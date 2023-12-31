toc.dat                                                                                             0000600 0004000 0002000 00000012133 14441335577 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           {            klinikhewan    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16592    klinikhewan    DATABASE     �   CREATE DATABASE klinikhewan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE klinikhewan;
                postgres    false         �            1259    16674    admin    TABLE     ]   CREATE TABLE public.admin (
    id_admin text NOT NULL,
    email text,
    password text
);
    DROP TABLE public.admin;
       public         heap    postgres    false         �            1259    16593    artikel    TABLE     �   CREATE TABLE public.artikel (
    id_artikel character varying NOT NULL,
    judul_artikel text,
    isi_artikel text,
    penulis text,
    tgl_publikasi timestamp with time zone,
    gambar text,
    id_admin text
);
    DROP TABLE public.artikel;
       public         heap    postgres    false         �            1259    16598    dokter    TABLE     �   CREATE TABLE public.dokter (
    id_dokter integer NOT NULL,
    nama_dokter text,
    foto_dokter text,
    jabatan text,
    id_admin text
);
    DROP TABLE public.dokter;
       public         heap    postgres    false         �            1259    16640    galeri    TABLE     z   CREATE TABLE public.galeri (
    kode_gambar text NOT NULL,
    data_gambar text,
    id_admin text,
    kategori text
);
    DROP TABLE public.galeri;
       public         heap    postgres    false                   0    16674    admin 
   TABLE DATA           :   COPY public.admin (id_admin, email, password) FROM stdin;
    public          postgres    false    217       3340.dat 	          0    16593    artikel 
   TABLE DATA           s   COPY public.artikel (id_artikel, judul_artikel, isi_artikel, penulis, tgl_publikasi, gambar, id_admin) FROM stdin;
    public          postgres    false    214       3337.dat 
          0    16598    dokter 
   TABLE DATA           X   COPY public.dokter (id_dokter, nama_dokter, foto_dokter, jabatan, id_admin) FROM stdin;
    public          postgres    false    215       3338.dat           0    16640    galeri 
   TABLE DATA           N   COPY public.galeri (kode_gambar, data_gambar, id_admin, kategori) FROM stdin;
    public          postgres    false    216       3339.dat w           2606    16680    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id_admin);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    217         s           2606    16620    dokter dokter_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.dokter
    ADD CONSTRAINT dokter_pkey PRIMARY KEY (id_dokter);
 <   ALTER TABLE ONLY public.dokter DROP CONSTRAINT dokter_pkey;
       public            postgres    false    215         q           2606    16624    artikel id_artikel_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.artikel
    ADD CONSTRAINT id_artikel_pk PRIMARY KEY (id_artikel);
 ?   ALTER TABLE ONLY public.artikel DROP CONSTRAINT id_artikel_pk;
       public            postgres    false    214         u           2606    16646    galeri kegiatan_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.galeri
    ADD CONSTRAINT kegiatan_pkey PRIMARY KEY (kode_gambar);
 >   ALTER TABLE ONLY public.galeri DROP CONSTRAINT kegiatan_pkey;
       public            postgres    false    216         x           2606    16681    artikel id_admin_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.artikel
    ADD CONSTRAINT id_admin_fk FOREIGN KEY (id_admin) REFERENCES public.admin(id_admin) NOT VALID;
 =   ALTER TABLE ONLY public.artikel DROP CONSTRAINT id_admin_fk;
       public          postgres    false    217    3191    214         z           2606    16686    galeri id_admin_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.galeri
    ADD CONSTRAINT id_admin_fk FOREIGN KEY (id_admin) REFERENCES public.admin(id_admin) NOT VALID;
 <   ALTER TABLE ONLY public.galeri DROP CONSTRAINT id_admin_fk;
       public          postgres    false    216    217    3191         y           2606    16691    dokter id_admin_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.dokter
    ADD CONSTRAINT id_admin_fk FOREIGN KEY (id_admin) REFERENCES public.admin(id_admin) NOT VALID;
 <   ALTER TABLE ONLY public.dokter DROP CONSTRAINT id_admin_fk;
       public          postgres    false    3191    215    217                                                                                                                                                                                                                                                                                                                                                                                                                                             3340.dat                                                                                            0000600 0004000 0002000 00000000116 14441335577 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        ADM1	nafis12@gmail.com	thecolorblue12
ADM2	rangga12@gmail.com	rangga1234
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                  3337.dat                                                                                            0000600 0004000 0002000 00000070601 14441335577 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        A001	Kenali Virus Panleukopenia pada Hewan Peliharaanmu	Panleukopenia adalah penyakit menular yang disebabkan oleh parvovirus. Virus ini sangat rentan menyerang anak kucing dan tidak menginfeksi manusia. Panleukopenia menginfeksi kucing dengan cara membunuh sel-sel yang aktif membelah di sumsum tulang, usus dan janin yang sedang berkembang. Meski lebih rentan menyerang anak kucing, kucing dari segala usia juga dapat terinfeksi panleukopenia, terutama pada kucing yang tidak mendapat vaksinasi. \n\nPenularan panleukopenia umumnya terjadi di toko hewan peliharaan, tempat penampungan hewan, kelompok yang tidak divaksinasi, dan area lain di mana kelompok kucing ditempatkan bersama. Mengingat virus ini sangat menular, sehingga wajib memberikan vaksin pada kucing peliharaan kamu supaya tidak terinfeksi virus ini. \n\nBagaimana Cara Panleukopenia Menular?\nKucing dapat mengeluarkan virus melalui urin, feses, dan cairan hidungnya. Infeksi terjadi ketika kucing yang rentan bersentuhan dengan sekresi ini atau tertular kutu dari kucing yang sudah terinfeksi panleukopenia. Kucing yang terinfeksi cenderung menularkan virus dalam waktu yang relatif singkat yakni sekitar satu sampai dua hari. Namun, virus dapat bertahan hingga satu tahun di lingkungan, sehingga kucing dapat terinfeksi tanpa pernah bersentuhan langsung dengan kucing lain yang sudah terinfeksi.\n\nTempat tidur, kandang, piring makanan, tangan, atau pakaian orang yang menangani kucing yang telah terkontaminasi virus dapat menjadi sarana penularan panleukopenia. Oleh karena itu, sangat penting untuk mengisolasi kucing yang terinfeksi dan memisahkan peralatan kucing tersebut dengan kucing lain yang masih sehat. Orang yang menangani kucing yang terinfeksi juga wajib menjaga kebersihan untuk mencegah penyebaran infeksi ke kucing lain.\n\nVirus panleukopenia termasuk jenis virus yang sulit dimatikan dan resisten terhadap banyak desinfektan. Idealnya, kucing yang belum divaksinasi tidak boleh dibiarkan masuk ke dalam area tempat kucing yang terinfeksi bahkan jika area tersebut telah didesinfeksi.\n\nCara Mendeteksi Panleukopenia pada Kucing\nTanda-tanda panleukopenia dapat bervariasi dan mungkin mirip dengan penyakit lain seperti infeksi Salmonella atau Campylobacter, pankreatitis, infeksi feline immunodeficiency virus (FIV), atau infeksi feline leukemia virus (FeLV). Kucing yang terinfeksi bahkan mungkin menunjukkan tanda-tanda seperti keracunan atau menelan benda asing.\n\nTanda-tanda pertama yang bisa diidentifikasi mungkin termasuk lesu, kehilangan nafsu makan, demam tinggi, muntah, diare parah, keluar ingus, dan dehidrasi. Kucing juga mungkin duduk dalam waktu lama di depan mangkuk airnya tetapi tidak minum banyak air. Pada beberapa kucing, demam bisa datang dan pergi selama sakit dan tiba-tiba turun ke tingkat yang lebih rendah dari biasanya sesaat sebelum meninggal. Pada anak kucing, virus bisa merusak otak dan mata.\n\nKucing hamil yang terinfeksi virus juga dapat mengalami keguguran atau melahirkan anak kucing yang mengalami kerusakan pada otak kecil, bagian otak yang mengoordinasikan saraf, otot, dan tulang. Anak kucing yang terlahir dengan kondisi ini dianggap mengidap sindrom feline cerebellar ataxia yang ditandai dengan tremor parah.\n\nApakah Panleukopenia Bisa Disembuhkan?\nPeluang kesembuhan panleukopenia tergantung pada usia kucing. Anak kucing yang berusia kurang dari delapan minggu umumnya punya peluang yang sangat kecil untuk bertahan hidup. Kucing yang lebih tua memiliki peluang lebih besar untuk bertahan hidup jika perawatan yang memadai diberikan sejak dini. Karena tidak ada obat yang mampu membunuh virus, perawatan intensif dengan obat dan cairan sangat diperlukan sampai tubuh dan sistem kekebalannya sendiri dapat melawan virus.\n\nPerawatan berfokus untuk mencegah dehidrasi, pemberian nutrisi dan pencegahan infeksi sekunder. Meskipun tidak membunuh virus, antibiotik sering kali diperlukan karena kucing yang terinfeksi berisiko lebih tinggi terkena infeksi bakteri, karena sistem kekebalannya tidak berfungsi sepenuhnya. Jika kucing bertahan selama lima hari, peluangnya untuk pulih sangat meningkat. Isolasi ketat dari kucing lain diperlukan untuk mencegah penyebaran virus. \n\nTips Mencegah Penularan Virus Panleukopenia pada Kucing\nPencegahan virus panleukopenia adalah dengan pemberian vaksin. Kebanyakan anak kucing menerima vaksinasi pertama antara usia 6 dan 8 minggu, dan vaksin lanjutan diberikan sampai anak kucing berusia sekitar 16 minggu. Anak kucing juga harus mendapatkan kolostrum, susu pertama yang diproduksi oleh induknya untuk meningkatkan kekebalan tubuhnya. 	American Veterinary Medical Association,	2023-05-26 00:00:00+07	/imgartikel/A001.jpg	ADM1
A004	Waspada terhadap Kutu pada Hewan Kesayangan Anda	Memiliki hewan peliharaan seperti anjing dan kucing memang dapat memberi kesenangan tersendiri bagi penyayang binatang. Sebab, hewan-hewan berbulu tersebut tampak lucu serta tingkah lakunya pintar dan menggemaskan. Namun, pemilik hewan peliharaan juga mesti ingat untuk menjaga kebersihan hewan peliharaannya secara rutin agar terhindar dari kutu. \n\nPasalnya, binatang kecil yang senang hinggap di bulu hewan peliharaan tersebut, tidak hanya bisa membuat hewan peliharaan kesayangan anda jadi kegatalan dan tidak nyaman, tetapi kutu juga bisa menyebar ke manusia dan menyebabkan berbagai macam penyakit. Yuk, waspadai bahayanya kutu pada hewan peliharaan di sini. \n\nBagi para pemilik hewan peliharaan, mewaspadai keberadaan kutu pada peliharaannya sangat penting. Selain bisa mengisap darah hewan, serangga ini juga bisa menggigit dan mengisap darah manusia. Gigitan kutu pada manusia bisa menyebabkan gatal-gatal dan gangguan kesehatan. \n\nBerbeda jenis hewan peliharaan, beda juga jenis kutu yang menghinggapinya:\n\nKutu Anjing \nKutu anjing mampu berkembang biak dengan cepat pada hewan peliharaan. Namun, kutu tersebut tidak hanya bisa ditemukan pada anjing atau kucing, melainkan bisa juga berkembang biak di halaman rumah yang tidak bersih.\nSaat tergigit kutu anjing, gejala yang biasanya akan muncul adalah benjolan-benjolan merah berukuran kecil. Benjolan ini biasanya memiliki lingkaran merah yang mengelilingi pusat gigitan. Area tubuh yang menjadi lokasi favorit gigitan kutu anjing adalah di bagian kaki atau pergelangan kaki. Selain area tersebut, gigitan kutu juga sering terjadi di pinggang, ketiak, dada, paha, dan lipatan siku. Biasanya, gigitan kutu muncul secara berkelompok sebanyak tiga atau empat yang membentuk garis lurus.\nGigitan kutu anjing bisa menimbulkan rasa gatal yang parah yang berpotensi menyebabkan infeksi, nyeri atau rasa sakit. Biasanya, kondisi tersebut terjadi karena digaruk terus-menerus akibat rasa gatal yang tidak tertahankan. Gigitan kutu juga bisa menyebabkan reaksi alergi pada orang yang memiliki kulit sensitif. Gejalanya bisa beragam, mulai dari muncul bekas lecet di kulit sampai kesulitan bernapas.\n\nMeski jarang terjadi, tetapi kutu anjing juga bisa menjadi penyebar infeksi cacing pita pada manusia. Penyakit ini dinamakan dipylidiasis, yaitu infeksi yang disebabkan oleh cacing bernama Dipylidium caninum. Seseorang bisa mengidap penyakit ini bila secara tidak sengaja menelan kutu anjing yang sudah terinfeksi parasit cacing Dipylidium caninum. \n  \nKutu Kucing \nTidak jauh berbeda dari kutu anjing, kutu kucing juga merupakan sejenis parasit yang hinggap di antara bulu-bulu kucing dan hidup dengan mengisap darah kucing. Kutu kucing bisa mengakibatkan gatal pada kucing, sehingga membuat si manis kesayangan akan merasa tidak nyaman, bahkan terluka karena terlalu sering menggaruk tubuhnya. Enggak hanya itu, kucing kesayangan juga berisiko terkena penyakit berbahaya, yaitu parasit darah bila kutu sudah masuk ke dalam tubuh kucing dan merusak sel-sel darah merah kucing.\nEnggak hanya berdampak buruk pada kucing itu sendiri, kutu kucing juga bisa menyebabkan dampak yang berbahaya pada manusia bila kutu hinggap di kulit tubuh manusia. Apalagi pada anak-anak. Kutu kucing bisa membuat Si Kecil mengalami rasa gatal yang ekstrim, hingga menimbulkan ruam dan menyebabkan suhu tubuhnya meningkat karena infeksi. Tidak hanya pada anak-anak, kutu kucing tentu juga akan membuat siapa saja yang dihinggapinya merasa tidak nyaman.\nCara Mengatasi Gigitan Kutu Hewan Peliharaan\nBila kondisi gigitan kutu hewan yang kamu alami masih ringan, seperti gatal atau sedikit bentol, kamu bisa menggunakan krim atau obat gatal yang dijual bebas. Namun, bila gigitan kutu hewan menimbulkan rasa gatal yang sangat parah, sebaiknya periksakanlah diri ke dokter. Dokter dapat memberikan obat antihistamin untuk meredakan rasa gatal.\n	dr. Rizal Fadli,	2020-10-23 00:00:00+07	/imgartikel/A004.jpg	ADM1
B003	Manfaat Streilisasi pada Hewan	Sterilisasi merupakan salah satu cara menjaga kesejahteraan hewan peliharaan. Sterilisasi dapat mengatasi sejumlah hal, salah satunya mengendalikan populasi hewan\n\nSterilisasi dapat dilakukan dengan cara pengangkatan organ reproduksi, baik pada jantan atau betina, melalui prosedur operasi kecil, papar Prof. Dr. drh. Gunanti, MS dalam acara podcast di SKHB IPB University (31/1).  \n\nAcara Educational Veterinary Podcast (EV-Cast) ini rutin digelar dan merupakan EV-Cast Episode ke-22 yang mengambil tema Sterilisasi pada Hewan? dan dilaksanakan secara live streaming di Youtobe channel SKHB IPB Official. \n\nProf. Dr. drh. Gunanti, MS, dosen di SKHB yang juga Direktur Rumah Sakit Hewan SKHB IPB University ini menyampaikan bahwa sterilisasi adalah suatu tindakan bedah atau menggunakan bahan kimia yang bertujuan untuk meniadakan peranakan (organ reproduksi), menghambat kebuntingan yang bisa dilakukan secara permanen atau hanya bersifat sementara. Sterilisasi pada hewan jantan disebut dengan kastrasi, yaitu pengambilan testis. Pada hewan betina sterilisasi bisa dilakukan melalui tiga cara, yaitu ovariektomi atau pengambilan ovarium tempat produksi sel telur dan hormon, histerektomi atau pengambilan rahim, dan ovariohisterektomi atau pengambilan ovarium sekaligus rahim, ujar dosen Divisi Bedah dan Radiologi ini.Lebih lanjut, Prof Gunanti menyampaikan tentang estrus atau birahi pada kucing dan anjing. Estrus atau berahi merupakan kondisi saat hewan betina sudah menunjukkan tanda-tanda ingin kawin. Birahi terjadi saat hormon produksi estrogen sudah tinggi dan merupakan tanda akan terjadi pengeluaran sel telur dari ovarium, atau proses ovulasi. Pada kucing, birahi ditandai dengan suara ribut atau berisik. Pada anjing, hewan betina mengeluarkan hormon feromon yang akan mengundang hewan jantan. Pejantan akan tertarik dan mencari sumber bau dari hormon feromon serta terus mengejar betina untuk melakukan proses perkawinan.\n\nSyarat minimum untuk melakukan sterilisasi pada hewan ialah harus memastikan hewan tersebut sehat, cukup umur (di atas 6-8 bulan), dan sudah melakukan vaksinasi. Contoh, waktu yang tepat untuk melakukan sterilisasi pada kucing betina ialah umur 6-8 bulan dan kucing jantan umur 8-9 bulan,? jelas Prof Gunanti.Berbeda dengan kucing, proses sterilisasi kuda umumnya dilakukan saat kuda berumur 4 tahun. Kuda yang telah disterilisasi masih menyimpan sisa sperma selama 30 hari sehingga masih memungkinkan untuk melakukan perkawinan satu kali. Kuda juga masih mempunyai memori untuk kawin yang tidak bisa dihilangkan begitu saja. Hal ini dijelaskan oleh narasumber kedua yang hadir di podcast, yakni Drh. Budhy Jasa Widyananta, M.Si.Podcast yang dipandu oleh drh Dwi Utari Rahmiati, M.Si sebagai host lebih lanjut menggali informasi terkait manfaat sterilisasi pada hewan. Strerilisasi bermanfaat menjamin kesejahteraan hewan, mencegah berbagai penyakit pada saluran reproduksi, mengurangi agresivitas sehingga mengurangi resiko penularan penyakit akibat gigitan antar hewan, dan kucing jantan akan berhenti menyemprotkan urin sebagai penanda wilayah sehingga menciptakan lingkungan yang bersih. \n\nDengan populasi yang terkendali maka probabilitas kontak manusia dengan hewan akan semakin kecil, sehingga resiko penularan penyakit dari hewan ke manusia juga menjadi semakin kecil. Kaitannya tentu dengan penyakit-penyakit zoonosis, pungkas Prof Gunanti. (ns)	Prof. Dr. drh. Gunanti, MS,	2023-01-31 00:00:00+07	/imgartikel/B003.jpg	ADM1
A003	Kenali Penyakit Umum yang terjadi pada Hewan Peliharaan Anda	Hewan peliharaan adalah anggota keluarga dan menjadi teman setia bagi banyak orang. Namun, seperti halnya manusia, hewan peliharaan juga rentan terhadap penyakit. Mengetahui beberapa penyakit umum pada hewan peliharaan dapat membantu pemilik dalam memberikan perawatan yang tepat dan mendapatkan bantuan medis dengan cepat jika diperlukan. Artikel ini akan membahas beberapa penyakit umum yang sering ditemui pada hewan peliharaan.\n\nPenyakit Infeksi Saluran Pernapasan Atas pada Kucing:\nSalah satu penyakit umum pada kucing adalah infeksi saluran pernapasan atas (ISPA). ISPA dapat disebabkan oleh virus atau bakteri, dan gejalanya meliputi bersin, batuk, hidung tersumbat, dan demam. Penanganan ISPA meliputi pemberian antibiotik jika disebabkan oleh bakteri, perawatan suportif, dan menjaga kebersihan lingkungan.\n\nPenyakit Kulit pada Anjing:\nAnjing rentan terhadap berbagai masalah kulit, termasuk alergi, infeksi jamur, kutu, dan gigitan serangga. Gejala penyakit kulit pada anjing meliputi gatal-gatal, ruam, kerontokan rambut, dan perubahan warna kulit. Perawatan penyakit kulit pada anjing meliputi penggunaan sampo khusus, pengobatan antijamur, dan pengendalian parasit.\n\nPenyakit Parvovirus pada Anjing:\nParvovirus adalah penyakit serius pada anjing yang menyerang saluran pencernaan dan sistem kekebalan tubuh. Gejala parvovirus meliputi muntah, diare berat, kehilangan nafsu makan, dan dehidrasi. Penanganan parvovirus melibatkan perawatan medis yang intensif, terapi cairan intravena, dan pemberian vaksin sebagai tindakan pencegahan.\n\nPenyakit Cacing pada Hewan Peliharaan:\nCacing internal, seperti cacing hati, cacing pita, dan cacing usus, adalah masalah umum pada hewan peliharaan. Cacing dapat mengganggu pencernaan, penyerapan nutrisi, dan sistem kekebalan tubuh hewan. Pencegahan penyakit cacing meliputi pemberian obat cacing rutin dan menjaga kebersihan lingkungan.\n\nPemahaman tentang penyakit umum pada hewan peliharaan merupakan hal penting bagi pemilik hewan. Dengan mengenali gejala awal dan memberikan perawatan yang tepat, pemilik dapat membantu mempercepat pemulihan hewan peliharaan mereka. Penting juga untuk menjaga vaksinasi dan perawatan kesehatan secara teratur untuk mencegah penyakit yang dapat dicegah. Dengan perawatan yang baik dan perhatian yang tepat, hewan peliharaan dapat hidup sehat dan bahagia.	Halodoc,	2022-04-19 00:00:00+07	/imgartikel/A003.jpg	ADM1
A002	Cacingan (Helminthiasis)  pada Anjing dan Kucing	Cacingan adalah jenis penyakit yang disebabkan oleh parasit cacing. Tak hanya manusia saja, ternyata cacingan juga dapat menyerang hewan peliharaan seperti anjing dan kucing. Anjing dan kucing dapat terinfeksi cacing melalui telur cacing yang tidak sengaja tertelan. Kutu terkadang juga dapat membawa telur cacing sehingga dapat menimbulkan kucing terinfeksi. Selain itu penyakit ini bisa menyerang anak anjing atau kucing sejak dari lahir, karena cacing ditularkan saat induk bunting dan saat induk menyusui, karena adanya cacing muda dalam tubuh induk. Empat jenis cacing yang paling sering menginfeksi kucing dan anjing adalah cacing gelang, cacing tambang, cacing pita, dan cacing hati.\n\nGejala yang ditimbulkan pada anjing dan kucing yang terinfeksi diantaranya dapat menyebabkan batuk, perut buncit, bulu kusam dan rontok, pertumbuhan terganggu, kurus, kadang muntah dan diare, kotoran mata banyak, lemah, nafsu makan berkurang. Umumnya cacing keluar bersama kotoran dalam bentuk panjang seperti kawat, berwarna putih, dan panjang (cacing gelang), seperti biji ketimun berwarna putih (cacing pita). Untuk memastikan hewan kesayangan anda tidak terinfeksi cacing, bisa dengan pemberian obat cacing secara rutin setiap 3 bulan sekali, atau pemeriksaan umum (general check up) ke dokter hewan. \n\nPecegahan :\nBerikan obat cacing 3 bulan sekali atau sesuai anjuran dokter\nJaga kebersihan sanitasi hewan (kandang, litter box, dan lingkungan sekitar)\nJika sudah terinfeksi, cek kesehatan hewan ke dokter secara rutin 	Dinas Pertanian Kab. Cilacap,	2020-06-11 00:00:00+07	/imgartikel/A002.jpg	ADM1
C001	Perancangan Buku Ilustrasi Pengaruh Posisitif Hewan Peliharaan Pada Psikologi Anak	Manusia memiliki berbagai macam pandangan mengenai hewan peliharaan. Hewan peliharaan merupakan hewan yang sudah dijinakkan dan hidup berdampingan dengan manusia. Informasi mengenai pengaruh hewan peliharaan pada psikologi anak tidak tersebar dengan  seksama. Psikologi merupakan hal yang penting dalam kehidupan manusia. Namun, masyarakat kurang mengerti mengenai psikologi. Hewan peliharaan memiliki pengaruh pada psikologi anak yang meliputi sosial jiwa, mental, dan fisik. \nPeliharaan mampu membantu anak melatih berbagai macam hal-hal positif melalui kegiatan yang dilakukan bersama. Banyaknya masyarakat juga yang kurang memperdulikan dan mengerti mengenai psikologi menjadi dasar permasalahan. Buku ilustrasi menjadi media dalam perencanaan yang memberikan informasi mengenai aktivitas anak dengan hewan peliharaan dan pengaruhnya terhadap anak.	Holly Natalyn Esahita Br Girsang, Ivan Kuniawan,	2022-03-11 00:00:00+07	/imgartikel/C001.png	ADM1
C002	Inovasi Mahasiswa Sekolah Vokasi IPB "Intara" Alat Infus Otomatis Berbasis IoT	Dalam dunia kesehatan hewan, penggunaan teknologi semakin menjadi bagian penting dalam meningkatkan kualitas perawatan hewan. Salah satu contohnya adalah pengembangan alat infus otomatis berbasis IoT yang menggunakan ESP32 dan Firebase. Alat ini merupakan hasil kerja sama antara mahasiswa program studi Teknologi Rekayasa Komputer dan program studi Paramedik Veteriner Sekolah Vokasi IPB University. Pembuatan alat ini dilakukan di Klinik Hewan yang berada di Sekolah Vokasi IPB.\n\nKlinik Hewan yang dikelola oleh program studi Paramedik Veteriner di Sekolah Vokasi IPB telah menjalin kerja sama dengan Teknologi Rekayasa Komputer untuk mengembangkan alat infus otomatis berbasis IoT. Alat ini dibuat dengan bantuan mahasiswa program studi Teknologi Rekayasa Komputer yang memiliki keahlian dalam pengembangan perangkat keras dan pemrograman.\n\nAlat infus otomatis ini memiliki kemampuan untuk memberikan cairan, obat-obatan, dan nutrisi secara otomatis kepada hewan yang sedang menjalani perawatan. Dengan menggunakan ESP32 sebagai mikrokontroler, alat ini dapat terhubung ke jaringan WiFi dan mengirimkan data secara real-time ke platform Firebase. Hal ini memungkinkan petugas kesehatan hewan untuk memantau dan mengendalikan infus jarak jauh melalui aplikasi berbasis web atau ponsel pintar.\n\nKolaborasi antara Mahasiswa Program Studi Teknologi Rekayasa Komputer dan Program Studi Paramedik Veteriner Sekolah Vokasi IPB University\n\nPembuatan alat infus otomatis berbasis IoT ini merupakan hasil kolaborasi yang erat antara mahasiswa program studi Teknologi Rekayasa Komputer dan program studi Paramedik Veteriner di Sekolah Vokasi IPB. Mahasiswa program studi Teknologi Rekayasa Komputer yang dibimbing oleh Bapak Aep Setiawan S.Si., M.Si. bertanggung jawab dalam merancang dan mengembangkan perangkat keras alat infus otomatis, sementara mahasiswa program studi Paramedik Veteriner yang dibimbing oleh drh. Henny Endah Anggreani M.Sc. memberikan pemahaman tentang kebutuhan perawatan hewan dan prosedur medis yang relevan.\n\nKolaborasi ini menggabungkanan keahlian dan pengetahuan dari kedua program studi tersebut, sehingga menghasilkan alat infus otomatis yang sesuai dengan kebutuhan dan standar kesehatan hewan. Mahasiswa dari kedua program studi ini juga mendapatkan pengalaman berharga dalam bekerja dalam tim lintas disiplin ilmu dan mengaplikasikan pengetahuan mereka dalam konteks dunia nyata.\n\nPenggunaan alat infus otomatis berbasis IoT di Klinik Hewan Sekolah Vokasi IPB memberikan berbagai manfaat yang signifikan. Beberapa manfaatnya antara lain: \n\n1. Efisiensi perawatan: Alat ini memungkinkan petugas kesehatan hewan untuk memberikan infus dengan lebih efisien dan akurat. Proses infus yang otomatis mengurangi waktu dan upaya yang dibutuhkan, sehingga petugas dapat fokus pada perawatan lainnya. \n\n2. Pemantauan jarak jauh: Alat ini memungkinkan petugas kesehatan hewan untuk memantau dan mengendalikan infus jarak jauh melalui aplikasi berbasis web atau ponsel pintar. Hal ini memudahkan petugas untuk memantau kondisi hewan dan melakukan intervensi jika diperlukan. \n\n3. Pengumpulan data medis: Alat ini dapat merekam dan menyimpan data infus secara digital. Data ini dapat digunakan untuk melacak riwayat perawatan hewan, menganalisis efektivitas perawatan, dan menyediakan informasi penting untuk diagnosis dan pengobatan. \n\n4. Peningkatan kualitas perawatan: Dengan adanya alat infus otomatis ini, perawatan hewan di Klinik Hewan Sekolah Vokasi IPB menjadi lebih terkontrol, akurat, dan efektif. Hewan-hewan yang menjalani perawatan dapat mendapatkan dosis obat atau nutrisi yang tepat sesuai dengan kebutuhan mereka.\n\nMasa Depan Kerja Sama dan Pengembangan Teknologi di Bidang Kesehatan Hewan\n\nKerja sama antara program studi Teknologi Rekayasa Komputer dan program studi Paramedik Veteriner Sekolah Vokasi IPB University dalam pengembangan alat infus otomatis berbasis IoT di Klinik Hewan Sekolah Vokasi IPB adalah langkah awal yang menjanjikan. Kerja sama semacam ini membuka peluang untuk pengembangan lebih lanjut dalam pemanfaatan teknologi di bidang kesehatan hewan.\n\nDi masa depan, kerja sama ini dapat diperluas untuk mengembangkan lebih banyak alat medis atau perangkat pintar lainnya yang mendukung perawatan hewan. Kolaborasi antara mahasiswa program studi Teknologi Rekayasa Komputer dan program studi Paramedik Veteriner Sekolah Vokasi IPB University juga dapat menjadi contoh inspiratif untuk kerja sama lintas disiplin ilmu dalam pengembangan teknologi kesehatan hewan.\n\nSelain itu, pengembangan teknologi di bidang kesehatan hewan juga membutuhkan dukungan dari pihak lain, seperti pihak industri atau institusi penelitian. Kerja sama dengan mitra dari industri atau lembaga penelitian dapat membantu dalam pengembangan dan pengujian teknologi yang lebih canggih serta memperluas jangkauan penggunaan teknologi ini di lapangan.\n\nKerja sama antara mahasiswa program studi Teknologi Rekayasa Komputer dan program studi Paramedik Veteriner Sekolah Vokasi IPB University dalam pengembangan alat infus otomatis berbasis IoT di Klinik Hewan Sekolah Vokasi IPB University telah memberikan manfaat yang signifikan bagi perawatan kesehatan hewan. Alat ini meningkatkan efisiensi, pemantauan jarak jauh, pengumpulan data medis, dan kualitas perawatan hewan secara keseluruhan. Kerja sama ini juga membuka peluang untuk pengembangan teknologi kesehatan hewan yang lebih lanjut dan kolaborasi lintas disiplin ilmu.	Ibnu Rasya Ramadhan,	2023-05-22 00:00:00+07	/imgartikel/C002.jpg	ADM1
KL01	Klinik Hewan Sekolah Vokasi IPB	klinik hewan sekolah vokasi IPB sebuah fasilitas yang didedikasikan untuk memberikan pengalaman praktik yang berharga bagi para mahasiswa program studi paramedik vateriner. Klinik Hewan ini diperuntukan untuk mahasiswa, di mana mahasiswa dapat menerapkan pengetahuan teoritis mereka dalam pengaturan praktis yang nyata.\n\nDi Klinik Hewan ini, mahasiswa didampingi oleh para profesional yang berpengalaman dan terampil di bidang kedokteran hewan. Dengan diajari langsung dari dosen dan dokter hewan yang berlisensi, mahasiswa memiliki kesempatan untuk mengamati, belajar, dan berpartisipasi dalam berbagai aspek perawatan hewan.\n\nMelalui pengalaman praktik di Klinik Hewan, mahasiswa akan belajar tentang pemeriksaan kesehatan, vaksinasi, perawatan kebersihan, serta perawatan spesialis lainnya. Mereka juga akan terlibat dalam prosedur medis, seperti pembedahan rutin dan pengobatan penyakit umum, dengan bimbingan dan pengawasan langsung dari staf yang berpengalaman.	Nikita Rosa	2020-10-23 00:00:00+07	/images/about1.jpg	ADM1
B001	Tips Merawat Kucing Kesayangan 	Kucing merupakan salah satu hewan peliharaan favorit masyarakat Indonesia. Saat memiliki kucing sebagai hewan peliharaan, tentu harus dirawat dan diperhatikan. Sehingga kucing peliharaan bisa tumbuh sehat dan terawat. Pasalnya kucing peliharaan yang tidak dirawat, membuat kucing sakit dan juga bisa menularkan penyakit ke manusia.\n\nBerikut 7 tips dalam merawat kucing kesayanganmu : \n1. Siapkan kandang, kamu bisa memilih kandang yang sesuai dengan ukuran kucing, mudah dibersihkan dan ditempatkan di ruang yang agak terbuka. \n\n2. Jaga kebersihan kandang dan bak pasir, kamu bisa memilih pasir kucing yang nyaman dan mudah dibersihkan sehari dua kali. Seperti pasir jenis zeolite. \n\n3. Perhatikan makanan dan minuman kucing. Berilah secara teratur 2-3 sehari berupa pakan kering yang mengandung Tetra Sodium Pyrophospat (TSPP).\n \n4. Bersihkan tempat makan dan minum Meski sepele, tempat makan dan minum juga harus dibersihkan secara rutin.\n"Tempat makan dan minum ini bisa dibersihkan dua kali dengan sabun pencuci piring," kata Tetty seperti dikutip dari Instagram IPB University, Minggu (7/5/2023). \n\n5. Bersihkan telinga kucing Kamu juga harus rutin membersihkan telinga kucing menggunakan cotton bud dengan hati-hati.\n \n6. Bersihkan gigi menggunakan sikat gigi \nSaat membersihkan gigi kucing, gunakan sikat gigi berbulu lembut dan pasta dengan gerakan melingkar dari arah terdepan ke belakang sekitar 30 detik. \n\n7. Bersihkan mata kucing dengan kapas lembut. \n\nMembersihkan kucing harus dilakukan secara teratur terutama kucing dengan hidung pesek. "Untuk kotoran mata yang mengeras basahi kapas dengan air hangat atau cairan NaCl," ujar  Tetty.	Drh. Tetty Barunawati Siagian, M.Si,	2023-05-06 00:00:00+07	/imgartikel/B001.png	ADM1
B002	Pentingnya Vaksin untuk Hewan Kesayangan Anda	Vaksin adalah produk yang dirancang untuk memicu respons kekebalan protektif sekaligus mempersiapkan sistem kekebalan untuk melawan infeksi nantinya. Vaksin juga bisa merangsang produksi antibodi yang bisa mengidentifikasi dan menghancurkan organisme penyebab penyakit yang masuk ke dalam tubuh. Dengan kata lain, vaksin memberikan kita kekebalan terhadap satu atau beberapa penyakit serta mengurangi tingkat keparahan penyakit. Ternyata tidak hanya manusia saja yang perlu mendapatkan vaksin, hewan pun juga, terutama anjing, kucing, dan unggas, seperti ayam. Berikut ini 5 alasan hewan peliharaan juga harus divaksin:\n\nVaksinasi mencegah hewan peliharaan dari berbagai penyakit.\nVaksinasi membantu menghindari perawatan mahal untuk mengobati penyakit yang bisa dicegah.\nVaksinasi mencegah penyakit yang dapat ditularkan dari hewan ke hewan dan juga dari hewan ke manusia. \n\nVaksinasi mencegah hewan peliharaan terinfeksi penyakit yang banyak terdapat di alam liar, seperti rabies dan distemper. Di beberapa daerah atau bagian negara tertentu mewajibkan untuk memvaksinasi hewan peliharaan. Jadi, vaksinasi bisa melindungi hewan peliharaan kamu dari penyakit yang sangat menular dan meningkat serta meningkatkan kualitas hidup hewan peliharaan kamu secara keseluruhan. Dengan menjaga hewan peliharaan tetap sehat, kesehatan kamu sekeluarga pun akan ikut terjaga. Syarat Hewan Peliharaan untuk Divaksin\nVaksin pada anjing dan kucing biasanya sudah bisa dilakukan setelah usia 2 bulan. Justru hewan peliharaan perlu divaksinasi sejak masih kecil, karena hewan peliharaan yang sangat muda lebih rentan terhadap penyakit menular disebabkan sistem kekebalannya belum sempurna sepenuhnya. \n\nAnjing dan kucing juga sebaiknya divaksin saat dalam kondisi yang sehat, tidak demam, memiliki nafsu makan yang baik dan tidak cacingan. Selain itu, hewan-hewan tersebut juga harus sudah memenuhi umur sesuai dengan syarat minimal vaksin, tidak sedang batuk, pilek, atau bersin, dan tidak mengalami diare dan muntah, serta tidak mengalami masalah kulit. Pasalnya, bila kucing atau anjing divaksin dalam keadaan sakit atau stres, hewan-hewan tersebut bisa mati. Prosedur Vaksin untuk Hewan Peliharaan Sama seperti manusia, vaksinasi untuk hewan peliharaan juga diberikan dalam beberapa tahap. Dosis pertama vaksin berfungsi untuk meningkatkan sistem kekebalan hewan terhadap virus atau bakteri, sedangkan dosis berikutnya merangsang sistem kekebalan untuk menghasilkan antibodi penting yang diperlukan untuk melindungi hewan dari penyakit. \n\nVaksinasi untuk hewan peliharaan juga sebaiknya diselesaikan sampai lengkap. Hal ini karena serangkaian vaksinasi yang tidak lengkap dapat membuat anak anjing dan anak kucing rentan terhadap infeksi. Untuk memberikan perlindungan optimal pada hewan peliharaan kamu dalam beberapa bulan pertama kehidupannya, serangkaian vaksinasi perlu dijadwalkan, biasanya 3–4 minggu secara terpisah. Kebanyakan anak anjing dan anak kucing akan mendapatkan vaksinasi terakhirnya pada usia sekitar 4 bulan.	dr. Rizal Fadli,	2023-10-24 00:00:00+07	/imgartikel/B002.jpg	ADM1
\.


                                                                                                                               3338.dat                                                                                            0000600 0004000 0002000 00000000671 14441335577 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Drh. Henny Endah Anggreani, M.Sc	/imgdokter/dr_henny.png	Ketua Prodi	ADM1
3	Drh. Surya Kusuma Wijaya, M.Si	/imgdokter/dr_surya.png	Sekretaris Prodi	ADM1
4	Dr. Drh. Dwi Budiono, M.Si	/imgdokter/dr_dwi.png	Dosen	ADM1
5	Drh. Heryudianto Vibowo, M.Si	/imgdokter/dr_hery.png	Dosen	ADM1
6	Drh. Tetty Barunawati Siagian, M.Si	/imgdokter/dr_tetty.png	Dosen	ADM1
2	Dr. Drh. Erni Sulistiawati, SP1, APVet	/imgdokter/dr_erni.png	Dosen	ADM2
\.


                                                                       3339.dat                                                                                            0000600 0004000 0002000 00000001017 14441335577 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        F001	/imgfasilitas/fasil1.jpg	ADM1	Fasilitas
F002	/imgfasilitas/fasil2.jpg	ADM1	Fasilitas
F003	/imgfasilitas/fasil3.jpg	ADM1	Fasilitas
F004	/imgfasilitas/fasil4.jpg	ADM1	Fasilitas
K001	/imgkegiatan/kegi1.jpg	ADM1	Kegiatan
K002	/imgkegiatan/kegi2.jpg	ADM1	Kegiatan
K003	/imgkegiatan/kegi3.jpg	ADM1	Kegiatan
K004	/imgkegiatan/kegi4.jpg	ADM1	Kegiatan
K005	/imgkegiatan/kegi5.jpg	ADM1	Kegiatan
F005	/imgfasilitas/fasil5.jpg	ADM1	Fasilitas
F006	/imgfasilitas/fasil6.jpg	ADM1	Fasilitas
K006	/imgkegiatan/kegi6.jpg	ADM1	Kegiatan
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000011377 14441335577 0015412 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

DROP DATABASE klinikhewan;
--
-- Name: klinikhewan; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE klinikhewan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE klinikhewan OWNER TO postgres;

\connect klinikhewan

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
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    id_admin text NOT NULL,
    email text,
    password text
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: artikel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artikel (
    id_artikel character varying NOT NULL,
    judul_artikel text,
    isi_artikel text,
    penulis text,
    tgl_publikasi timestamp with time zone,
    gambar text,
    id_admin text
);


ALTER TABLE public.artikel OWNER TO postgres;

--
-- Name: dokter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dokter (
    id_dokter integer NOT NULL,
    nama_dokter text,
    foto_dokter text,
    jabatan text,
    id_admin text
);


ALTER TABLE public.dokter OWNER TO postgres;

--
-- Name: galeri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galeri (
    kode_gambar text NOT NULL,
    data_gambar text,
    id_admin text,
    kategori text
);


ALTER TABLE public.galeri OWNER TO postgres;

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (id_admin, email, password) FROM stdin;
\.
COPY public.admin (id_admin, email, password) FROM '$$PATH$$/3340.dat';

--
-- Data for Name: artikel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artikel (id_artikel, judul_artikel, isi_artikel, penulis, tgl_publikasi, gambar, id_admin) FROM stdin;
\.
COPY public.artikel (id_artikel, judul_artikel, isi_artikel, penulis, tgl_publikasi, gambar, id_admin) FROM '$$PATH$$/3337.dat';

--
-- Data for Name: dokter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dokter (id_dokter, nama_dokter, foto_dokter, jabatan, id_admin) FROM stdin;
\.
COPY public.dokter (id_dokter, nama_dokter, foto_dokter, jabatan, id_admin) FROM '$$PATH$$/3338.dat';

--
-- Data for Name: galeri; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.galeri (kode_gambar, data_gambar, id_admin, kategori) FROM stdin;
\.
COPY public.galeri (kode_gambar, data_gambar, id_admin, kategori) FROM '$$PATH$$/3339.dat';

--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id_admin);


--
-- Name: dokter dokter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dokter
    ADD CONSTRAINT dokter_pkey PRIMARY KEY (id_dokter);


--
-- Name: artikel id_artikel_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artikel
    ADD CONSTRAINT id_artikel_pk PRIMARY KEY (id_artikel);


--
-- Name: galeri kegiatan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galeri
    ADD CONSTRAINT kegiatan_pkey PRIMARY KEY (kode_gambar);


--
-- Name: artikel id_admin_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artikel
    ADD CONSTRAINT id_admin_fk FOREIGN KEY (id_admin) REFERENCES public.admin(id_admin) NOT VALID;


--
-- Name: galeri id_admin_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galeri
    ADD CONSTRAINT id_admin_fk FOREIGN KEY (id_admin) REFERENCES public.admin(id_admin) NOT VALID;


--
-- Name: dokter id_admin_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dokter
    ADD CONSTRAINT id_admin_fk FOREIGN KEY (id_admin) REFERENCES public.admin(id_admin) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 