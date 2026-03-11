-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

-- PostgreSQL.18 PostgreSQL

SELECT Max("ID") FROM "SequenceTest1"

INSERT BULK "SequenceTest1"(ID, Value)

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" LIKE 'SeqValue%' ESCAPE '~'

