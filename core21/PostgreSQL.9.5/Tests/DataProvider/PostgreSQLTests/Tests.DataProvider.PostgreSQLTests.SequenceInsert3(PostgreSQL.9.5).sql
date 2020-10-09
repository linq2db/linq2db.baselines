BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue'

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Value_1 Text(8) -- String
SET     @Value_1 = 'SeqValue'

INSERT INTO "SequenceTest3"
(
	"ID",
	"Value"
)
VALUES
(
	nextval('sequencetestseq'),
	:Value_1
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	t1."ID", 
	t1."Value"
FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 2

DELETE FROM
	"SequenceTest3" t1
WHERE
	t1."ID" = :id

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	Count(*)
FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue'

