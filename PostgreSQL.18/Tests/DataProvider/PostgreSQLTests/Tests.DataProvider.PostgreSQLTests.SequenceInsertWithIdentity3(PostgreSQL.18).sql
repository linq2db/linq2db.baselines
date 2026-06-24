-- PostgreSQL.18 PostgreSQL13

DELETE FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue'

-- PostgreSQL.18 PostgreSQL13
DECLARE @Value Text(8) -- String
SET     @Value = 'SeqValue'

INSERT INTO "SequenceTest3"
(
	"ID",
	"Value"
)
VALUES
(
	nextval('sequencetestseq'),
	:Value
)
RETURNING 
	"ID"

-- PostgreSQL.18 PostgreSQL13

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT 2

-- PostgreSQL.18 PostgreSQL13
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

DELETE FROM
	"SequenceTest3" t1
WHERE
	t1."ID" = :id1

-- PostgreSQL.18 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue'

