INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES('Bootcamp HTML','http://www.hiperbytes.com.br/wp-content/uploads/2021/02/banner-curso-html.png', 'https://cdn-icons-png.flaticon.com/512/2000/2000887.png');


INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:25Z', TIMESTAMP WITH TIME ZONE '2021-12-13T03:50:25Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-02-13T20:50:25Z', TIMESTAMP WITH TIME ZONE '2021-12-13T03:50:25Z', 1);


INSERT INTO tb_resource (title , description, position, img_Uri, type, offer_id ) VALUES ('Trilha HTML','Primeiro passo', 1, 'http://www.hiperbytes.com.br/wp-content/uploads/2021/02/banner-curso-html.png', 1, 1);
INSERT INTO tb_resource (title , description, position, img_Uri, type, offer_id ) VALUES ('Forum','tire sua duvida', 2, 'http://www.hiperbytes.com.br/wp-content/uploads/2021/02/banner-curso-html.png', 2, 1);
INSERT INTO tb_resource (title , description, position, img_Uri, type, offer_id ) VALUES ('trilha CSS','personalizando o HTML', 3, 'http://www.hiperbytes.com.br/wp-content/uploads/2021/02/banner-curso-html.png', 0, 1);

INSERT INTO tb_section  (title , description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Começando', 1, 'http://www.hiperbytes.com.br/wp-content/uploads/2021/02/banner-curso-html.png', 1,null);
INSERT INTO tb_section  (title , description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'continuando', 2, 'http://www.hiperbytes.com.br/wp-content/uploads/2021/02/banner-curso-html.png', 1,1);
INSERT INTO tb_section  (title , description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Finalizando', 3, 'http://www.hiperbytes.com.br/wp-content/uploads/2021/02/banner-curso-html.png', 1,2);

INSERT INTO tb_enrollment(user_id,offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1,TIMESTAMP WITH TIME ZONE '2020-07-13T22:50:25Z', null, true, false);
INSERT INTO tb_enrollment(user_id,offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1,TIMESTAMP WITH TIME ZONE '2020-07-13T22:50:25Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri ) VALUES (1,'Material de apoio: Java', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri ) VALUES (2,'', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri ) VALUES (3,'', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');


INSERT INTO tb_lesson (title, position, section_id) VALUES ('tarefa do capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4,'Fazer um trabalho', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-12-13T03:50:25Z' );

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1,1,1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2,1,1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);





