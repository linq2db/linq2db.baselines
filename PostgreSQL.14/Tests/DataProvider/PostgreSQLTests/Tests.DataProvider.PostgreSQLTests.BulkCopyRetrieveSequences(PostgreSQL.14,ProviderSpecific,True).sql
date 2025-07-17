BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT nextval('sequencetestseq') FROM generate_series(1, 40)

BeforeExecute
INSERT BULK "SequenceTest1"(ID, Value)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

