BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
RETURNING 
	"ID"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."ID" = :id1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'

