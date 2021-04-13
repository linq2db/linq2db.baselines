﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" ILIKE 'SeqValue%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE sequencetestseq RESTART WITH 1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT nextval('sequencetestseq') FROM generate_series(1, 40)

BeforeExecute
INSERT BULK "SequenceTest1"(ID, Value

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" ILIKE 'SeqValue%' ESCAPE '~'

