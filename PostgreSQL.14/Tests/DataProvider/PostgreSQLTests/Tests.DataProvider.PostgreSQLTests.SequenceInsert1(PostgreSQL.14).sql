-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Value Text(8) -- String
SET     @Value = 'SeqValue'

INSERT INTO "SequenceTest1"
(
	"ID",
	"Value"
)
VALUES
(
	nextval('sequencetestseq'),
	:Value
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."ID" = :id

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'

