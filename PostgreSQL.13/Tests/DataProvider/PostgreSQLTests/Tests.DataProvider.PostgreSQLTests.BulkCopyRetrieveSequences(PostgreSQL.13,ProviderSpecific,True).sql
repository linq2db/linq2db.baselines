-- PostgreSQL.13 PostgreSQL13

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

-- PostgreSQL.13 PostgreSQL13

SELECT nextval('sequencetestseq') FROM generate_series(1, 40)

INSERT BULK "SequenceTest1"(ID, Value)

-- PostgreSQL.13 PostgreSQL13

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

