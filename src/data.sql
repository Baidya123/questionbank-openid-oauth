# DDL Queries
CREATE TABLE category (
                          category_id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                          subject varchar NOT NULL,
                          exam_type varchar NULL,
                          created_ts timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          last_updated_ts timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          CONSTRAINT category_pk PRIMARY KEY (category_id)
);

CREATE TABLE public.question_answers (
                                         question_id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                                         category_id int4 NOT NULL,
                                         question varchar NULL,
                                         answer varchar NULL,
                                         created_ts timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                         last_updated_ts timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                         CONSTRAINT question_answers_pk PRIMARY KEY (question_id),
                                         CONSTRAINT question_answers_fk FOREIGN KEY (category_id) REFERENCES category(category_id) ON UPDATE CASCADE ON DELETE CASCADE
);

# DML Queries
INSERT INTO public.category (subject,exam_type)
	VALUES ('English','GRE');
INSERT INTO public.category (subject,exam_type)
VALUES ('Maths','GRE');
INSERT INTO public.category (subject,exam_type)
VALUES ('Chemistry','IITJEE');
INSERT INTO public.category (subject,exam_type)
VALUES ('Physics','IITJEE');
INSERT INTO public.category (subject,exam_type)
VALUES('GK','UPSC');

INSERT INTO public.question_answers (category_id,question,answer)
VALUES (2,'If x and y are non-negative integers such that 2x+3y=8 and z=x2+y2, what is the maximum value of z?','16');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (3,'Alkali metals are strong oxidizing agents. True or False?','FALSE');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (4,'Rubidium is a ..... Group element','1st');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (3,'Hydration enthalpy ......... down the group','decreases');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (3,'The magnetism exposed by alkali metal solutions in liquid ammonia','paramagnetism');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (4,'What is the SI unit of length?','Metre');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (3,'Sodium Hydroxide is generally prepared by electrolysis of sodium chloride in','Castner-Kellner Cell');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (5,'When is the World Pulses Day observed, across the world?','10 February');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (5,'The World Health Assembly of WHO has designated 2020 as which year?','The International Year of the Nurse and the Midwife');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (5,'The Molotov Ribbentrop Pact, which is currently being debated in news, was signed by Nazi Germany with which country?','Soviet Union');
INSERT INTO public.question_answers (category_id,question,answer)
VALUES (5,'Which country voted for constitutional amendments, that let its President to remain in power till 2036?','Russia');