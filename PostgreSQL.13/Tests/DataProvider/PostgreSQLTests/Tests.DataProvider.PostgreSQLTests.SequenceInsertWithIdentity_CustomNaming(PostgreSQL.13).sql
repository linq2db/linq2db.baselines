-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."Value" = 'SeqValue'

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Text(8) -- String
SET     @Value = 'SeqValue'

INSERT INTO "SequenceCustomNamingTest"
(
	"ID",
	"Value"
)
VALUES
(
	nextval('test_schema."SequenceCustomNamingTest__seq__"'),
	:Value
)
RETURNING 
	"ID"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT 2

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

DELETE FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."ID" = :id1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."Value" = 'SeqValue'

