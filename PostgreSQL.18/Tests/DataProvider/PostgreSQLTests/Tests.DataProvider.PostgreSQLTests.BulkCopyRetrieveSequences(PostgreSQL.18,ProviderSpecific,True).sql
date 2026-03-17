-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

-- PostgreSQL.18 PostgreSQL

SELECT nextval('sequencetestseq') FROM generate_series(1, 40)

INSERT BULK "SequenceTest1"(ID, Value)

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

