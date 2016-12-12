# SAD-FINAL
J Jeong, Nick Collins, Joseph Abousharkh, Joshua Castaneda - Mr. Clark Coding Class Final Project
CREATE TABLE Religions (
	Religion SMALLINT NOT NULL,
	Religion_id SMALLINT NOT NULL,
	PRIMARY KEY (Religion, Religions_id)
);


INSERT into Religions(Religion, Religion_id, last_update)
VALUES (2, ‘Islam’, NOW())


INSERT into Religions(Religion, Religion_id, last_update)
VALUES (1, ‘Christianity’, NOW())
 
INSERT into Religions(Religion, Religion_id, last_update)
VALUES (3, ‘Judaism’, NOW())


INSERT into Religions(Religion, Religion_id, last_update)
VALUES (4, ‘Hinduism’ NOW())






CREATE TABLE Region (
	Religion SMALLINT NOT NULL,
	Religion_id SMALLINT NOT NULL,
	Region SMALLINT NOT NULL,
	FOREIGN KEY (Religions_id) references religion (Religions_id)
	FOREIGN KEY (Religion) references religion (Religion)
);




INSERT into Regions(Religion_id, Region)
VALUES  (2, 'Middle East', NOW());


INSERT into Regions(Religion, Religion_id, Region)
VALUES (1, 'Europe and other various regions' ()); NOW


INSERT into Regions(Religion, Religion_id, Region)
VALUES (3, 'The Levant’, NOW());


INSERT into Regions(Religion, Religion_id, Region)
VALUES (4, ‘India and Southeast Asia’, NOW());




CREATE TABLE Principles (
	Religion SMALLINT NOT NULL,
	Religion_id SMALLINT NOT NULL,
	Principles SMALLINT NOT NULL,
	FOREIGN KEY (Religions_id) references religion (Religions_id)
	FOREIGN KEY (Religion) references religion (Religion)


);
INSERT into Principles(Religion, Religion_id, Principles)
VALUES (2, ‘Quran’, NOW())


INSERT into Principles(Religion, Religion_id, Principles)
VALUES (1, ‘Bible’, NOW())
 
INSERT into Principles(Religion, Religion_id, Principles)
VALUES (3, ‘Torah’, NOW())


INSERT into Principles(Religion, Religion_id, Principles)
VALUES (4, ‘Vedas’ NOW())






	
CREATE TABLE Origin (
	Religion SMALLINT NOT NULL,
	Religion_id SMALLINT NOT NULL,
	Origin SMALLINT NOT NULL,
	FOREIGN KEY (Religions_id) references religion (Religions_id)
	FOREIGN KEY (Religion) references religion (Religion)


);


INSERT into Origin(Religion, Religion_id, Origin)
Values (1, ‘Jerusalem’, NOW());


INSERT into Origin(Religion, Religion_id, Origin)
VALUES (2, ‘Mecca’, NOW());


INSERT into Origin(Religion, Religion_id, Origin)
VALUES (3, ‘Jerusalem’ NOW(();


INSERT into Origin(Religion, Religion_id, Origin)
VALUES (‘Jerusalem’, NOW());


INSERT into Origin(Religion, Religion_id, Origin)
VALUES (‘Mecca’, NOW());




INSERT into Origin(Religion, Religion_id, Origin)
VALUES (‘India’, NOW());





CREATE TABLE Deities (
Religion SMALLINT NOT NULL,
	Religion_id SMALLINT NOT NULL,
	Deities SMALLINT NOT NULL,
	FOREIGN KEY (Religions_id) references religion (Religions_id)
	FOREIGN KEY (Religion) references religion (Religion)


);




Insert into Deities(Religion, Religion_id, Deities)
Values (‘God’, NOW());


Insert into Deities(Religion, Religion_id, Deities)
VALUES (‘Allah’, NOW());


Insert into Deities(Religion, Religion_id, Deities)
VALUES (‘YHWH’, NOW());


Insert into Deities(Religion, Religion_id, Deities)
VALUES (‘Vishnu and Others’, NOW());


