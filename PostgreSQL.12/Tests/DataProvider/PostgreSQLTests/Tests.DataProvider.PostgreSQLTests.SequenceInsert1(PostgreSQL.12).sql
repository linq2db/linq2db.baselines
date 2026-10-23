-- PostgreSQL.12 PostgreSQL12
DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT 2

-- PostgreSQL.12 PostgreSQL12
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."ID" = :id

-- PostgreSQL.12 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'

