create table users(
	id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50)
)

create table posts(
	id serial primary key,
	creator_id int references users(id),
	title varchar(50),
	text text
)

create table likes(
	id serial primary key,
	user_id int references users(id),
	post_id int references posts(id)
)


insert into users(first_name,last_name,email)values
('Hugo','Ronea','hugo@gmail.com'),
('Paco','Melon', 'paco@gmail.com'),
('Pepe', 'Lepew','pepe@gmail.com')

insert into posts(creator_id,title,text)values
(1,'Salud y Bienestar','eget porttitor augue enim ac mi. Phasellus eget magna aliquam'),
(1,'Deporte', 'Nullam in varius purus. Donec bibendum pharetra arcu a rhoncus.'),
(2,'Economia', 'Sed luctus tellus ante, in viverra sapien efficitur placerat.'),
(2,'Mercados','turpis sapien, vitae iaculis sem vulputate sit amet.'),
(3,'Tecnologia','Sed hendrerit velit eget erat imperdiet, non molestie lectus feugiat')

insert into likes(user_id,post_id)values(1,1),(1,2),(1,5),(2,3),(2,4),(2,5),(3,5)

select * from likes
select * from users
select * from posts

select posts.id,title,creator_id,first_name,last_name,email from 
posts inner join users on posts.creator_id=users.id

select user_id,post_id,first_name,last_name,title from 
users inner join likes on users.id=likes.user_id inner join posts on posts.id=likes.post_id

