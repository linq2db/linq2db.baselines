-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT nextval('sequencetestseq') FROM generate_series(1, 40)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SequenceTest1"
(
	"ID",
	"Value"
)
VALUES
(1,'SeqValue1'),
(2,'SeqValue2'),
(3,'SeqValue3'),
(4,'SeqValue4'),
(5,'SeqValue5'),
(6,'SeqValue6'),
(7,'SeqValue7'),
(8,'SeqValue8'),
(9,'SeqValue9'),
(10,'SeqValue10')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SequenceTest1"
(
	"ID",
	"Value"
)
VALUES
(11,'SeqValue11'),
(12,'SeqValue12'),
(13,'SeqValue13'),
(14,'SeqValue14'),
(15,'SeqValue15'),
(16,'SeqValue16'),
(17,'SeqValue17'),
(18,'SeqValue18'),
(19,'SeqValue19'),
(20,'SeqValue20')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SequenceTest1"
(
	"ID",
	"Value"
)
VALUES
(21,'SeqValue21'),
(22,'SeqValue22'),
(23,'SeqValue23'),
(24,'SeqValue24'),
(25,'SeqValue25'),
(26,'SeqValue26'),
(27,'SeqValue27'),
(28,'SeqValue28'),
(29,'SeqValue29'),
(30,'SeqValue30')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SequenceTest1"
(
	"ID",
	"Value"
)
VALUES
(31,'SeqValue31'),
(32,'SeqValue32'),
(33,'SeqValue33'),
(34,'SeqValue34'),
(35,'SeqValue35'),
(36,'SeqValue36'),
(37,'SeqValue37'),
(38,'SeqValue38'),
(39,'SeqValue39'),
(40,'SeqValue40')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

