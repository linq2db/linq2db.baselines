-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT Max("ID") FROM "SequenceTest1"

INSERT BULK "SequenceTest1"(ID, Value)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

