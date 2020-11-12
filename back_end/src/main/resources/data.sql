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
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Perguntas e Respostas', 'Tire suas dúvidas',2,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1,'Link 2', 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Forum', 'Todas as respostas, em um só lugar',3,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1,'Link 1', 2);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Lives de carreira', 'Lives Exclusivas com cpnvidados especiais',4,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1,'Link 2', 2);

INSERT INTO tb_section (title, description, position, img_Uri, resource_Id, prerequisite_Id) VALUES ('Capitulo 1', 'Aplicaremos todo contéudo da section 1',1,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_Id, prerequisite_Id) VALUES ('Capitulo 2', 'Aplicaremos todo contéudo da section 2',1,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_Id, prerequisite_Id) VALUES ('Capitulo 3', 'Aplicaremos todo contéudo da section 3',1,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_Id, prerequisite_Id) VALUES ('Capitulo 4', 'Aplicaremos todo contéudo da section 4',1,'https://ayltoninacio.com.br/img/p/32w1500.jpg', 1, 1);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1,TIMESTAMP WITH TIME ZONE '2021-11-20T16:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1,TIMESTAMP WITH TIME ZONE '2021-11-20T16:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (3, 1,TIMESTAMP WITH TIME ZONE '2021-11-20T16:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('AULA 1', 1, 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('AULA 2', 2, 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('AULA 1', 1, 2);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('AULA 2', 2, 2);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('AULA 3: Tarefa Capitulo 1', 3, 1);

INSERT INTO tb_content (content, video_Uri, id) VALUES ('Material de Apoio 1','https://www.youtube.com/watch?v=WpA2NXdfkNQ', 1);
INSERT INTO tb_content (content, video_Uri, id) VALUES ('Material de Apoio 2','https://www.youtube.com/watch?v=WpA2NXdfkNQ', 2);
INSERT INTO tb_content (content, video_Uri, id) VALUES ('Material de Apoio 3','https://www.youtube.com/watch?v=WpA2NXdfkNQ', 3);
INSERT INTO tb_content (content, video_Uri, id) VALUES ('Material de Apoio 4','https://www.youtube.com/watch?v=WpA2NXdfkNQ', 4);
INSERT INTO tb_task (description, question_Count, approval_Count, weight, due_Date, id ) VALUES ('Fazer um trabalho', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-11-20T16:00:00Z', 5 );

INSERT INTO tb_lesson_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lesson_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
INSERT INTO tb_lesson_done (lesson_id, user_id, offer_id) VALUES (3, 1, 1);



INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);