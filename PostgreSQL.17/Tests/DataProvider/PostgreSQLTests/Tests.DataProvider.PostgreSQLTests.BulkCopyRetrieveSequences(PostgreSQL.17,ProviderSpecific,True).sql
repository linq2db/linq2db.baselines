-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT nextval('sequencetestseq') FROM generate_series(1, 40)

INSERT BULK "SequenceTest1"(ID, Value)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

