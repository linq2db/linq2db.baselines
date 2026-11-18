-- PostgreSQL.19 PostgreSQL12
DELETE FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'

-- PostgreSQL.19 PostgreSQL12
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
RETURNING 
	"ID"

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
DECLARE @id1 Integer -- Int32
SET     @id1 = 2

DELETE FROM
	"SequenceTest2" t1
WHERE
	t1."ID" = :id1

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'

