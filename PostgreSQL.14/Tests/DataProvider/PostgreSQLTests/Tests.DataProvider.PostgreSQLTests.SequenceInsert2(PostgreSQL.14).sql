-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DELETE FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Value Text(8) -- String
SET     @Value = 'SeqValue'

INSERT INTO "SequenceTest2"
(
	"Value"
)
VALUES
(
	:Value
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest2" t1
WHERE
	t1."ID" = :id

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'

