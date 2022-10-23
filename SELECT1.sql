select g.title, count(executer_id) from genre_executer ge 
left join genre g on ge.genre_id = g.id 
group by g.title; 

select COUNT(t.id) from track t 
left join album a on t.album_id = a.id 
where a.year_of_release  between 2019 and 2020;

select a.album_title, round(avg(t.song_duration), 1) from track t 
left join album a on t.album_id = a.id 
group by a.id; 

select e.name from album_executer ae 
join album a on a.id = ae.album_id 
join executer e on e.id = ae.executer_id 
where a.year_of_release != 2020;

select cs.track_name from collection_of_songs cs
join track_collection tc on tc.collection_of_songs_id = cs.id 
join track t on t.id = tc.track_id 
join album a on a.id = t.album_id 
join album_executer ae on ae.album_id = a.id 
join executer e on e.id = ae.executer_id 
where e.name = 'Ария';

select a.album_title , count(g.title) from album a 
join album_executer ae  on ae.album_id = a.id 
join executer e  on e.id = ae.executer_id 
join genre_executer ge  on ge.executer_id  = e.id 
join genre g on g.id = ge.genre_id 
group by a.album_title  
having count(g.title) > 1;

select t.track_name from track t 
left join track_collection tc  on tc.track_id  = t.id 
where tc.collection_of_songs_id  is null; 

SELECT t.track_name from track t 
where t.song_duration  = (select MIN(song_duration) FROM track);

select a.album_title , count(t.id)  from album a
join track t  on t.album_id = a.id 
group by a.id 
having count(t.id) = 
	(select count(t.id)  from album a 
	join track t  on t.album_id = a.id 
	group by a.id 
	order by count(t.id)
	limit 1)

