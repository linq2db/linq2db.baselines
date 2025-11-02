-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT Max("ID") FROM "SequenceTest1"

INSERT BULK "SequenceTest1"(ID, Value)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

