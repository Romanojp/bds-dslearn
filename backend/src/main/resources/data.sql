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