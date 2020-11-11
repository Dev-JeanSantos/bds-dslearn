INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Jean Santos', 'jean@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Mensagem 1', TIMESTAMP WITH TIME ZONE '2020-11-11T16:00:00Z', false, 'route Manesagem 1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Mensagem 1', TIMESTAMP WITH TIME ZONE '2020-11-11T16:00:00Z', false, 'route Manesagem 1', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Mensagem 2', TIMESTAMP WITH TIME ZONE '2020-11-11T16:00:00Z', false, 'route Manesagem 1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Mensagem 2', TIMESTAMP WITH TIME ZONE '2020-11-11T16:00:00Z', false, 'route Manesagem 1', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Mensagem 2', TIMESTAMP WITH TIME ZONE '2020-11-11T16:00:00Z', false, 'route Manesagem 1', 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Trilha JAVA REACT', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRVh2uM-DebaaY88YfkDGLpfhiKi054rCO2GQ&usqp=CAU');
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Trilha HTML', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRVh2uM-DebaaY88YfkDGLpfhiKi054rCO2GQ&usqp=CAU');
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Trilha CSS', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRVh2uM-DebaaY88YfkDGLpfhiKi054rCO2GQ&usqp=CAU');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('edição 1', TIMESTAMP WITH TIME ZONE '2021-01-01T16:00:00Z',TIMESTAMP WITH TIME ZONE '2022-01-01T16:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('edição 2', TIMESTAMP WITH TIME ZONE '2021-01-01T16:00:00Z',TIMESTAMP WITH TIME ZONE '2022-01-01T16:00:00Z', 2);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('edição 3', TIMESTAMP WITH TIME ZONE '2021-01-01T16:00:00Z',TIMESTAMP WITH TIME ZONE '2022-01-01T16:00:00Z', 3);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('edição 4', TIMESTAMP WITH TIME ZONE '2021-01-01T16:00:00Z',TIMESTAMP WITH TIME ZONE '2022-01-01T16:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Trilha HTML', 'Trilha Principal do HTML do Curso',1,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1,'Link 1', 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Perguntas e Respostas', 'Trilha Principal do HTML do Curso',1,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1,'Link 1', 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Forum', 'Trilha Principal do HTML do Curso',1,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1,'Link 1', 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Lives de carreira', 'Trilha Principal do HTML do Curso',1,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1,'Link 1', 1);



INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);