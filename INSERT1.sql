insert into genre (title) values
('Rock'),
('Heavy Metal'),
('Ska-Pank'),
('Alternative Rock'),
('Pop-Rock');

insert into executer (name) values
('Пикник'),
('Nautilus Pompilius'),
('Ария'),
('Гарик Сукачев'),
('Сплин'),
('Ляпис Трубецкой'),
('Кукрыниксы'),
('Мумий Тролль');

insert into genre_executer values
(1, 1),
(2, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 3),
(7, 4),
(8, 5),
(3, 1);

insert into album(album_title, year_of_release) values
('Веселый и злой', 2022),
('Яблокитай', 2001),
('Проклятье морей', 2018),
('246', 2019),
('Встречная полоса', 2018),
('Капитал', 2007),
('Всадник света', 2010),
('После зла', 2020);

insert into album_executer values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

insert into track (album_id, track_name, song_duration) values
(1, 'Утро', 168),
(1, 'Колдун', 237),
(1, 'Дом мой на двух ногах', 279),
(2, 'Три Царя', 256),
(2, 'Атлантида', 246),
(2, 'Бедная птица', 268),
(3, 'Варяг', 399),
(3, 'Эра Люцифера', 347),
(3, 'Проклятье морей', 726),
(4, 'Маленькая девочка', 396),
(4, 'Элегия', 515),
(5, 'На утро', 244),
(6, 'Капитал', 196),
(7, 'ЗЛО', 247),
(8, 'Экосистема', 174);

insert into collection_of_songs  (release_date_collrction , track_name) values
(2019, 'Наше радио.Лучшее.'),
(2020, 'Rock Archive.'),
(2016, 'Легенды русского рока.'),
(2011, 'Alternative Rock.'),
(2020, 'The Best Classics of Russian Rock.'),
(2020, 'Мой голос.'),
(2019, 'Это Рок'),
(2017, 'НЫРОК В БЕЛ РОК');

insert into track_collection values
(2, 6),
(3, 5),
(4, 3),
(5, 7),
(13, 8),
(13, 3),
(14, 4),
(12, 1),
(7, 2),
(8, 7),
(10, 1);














