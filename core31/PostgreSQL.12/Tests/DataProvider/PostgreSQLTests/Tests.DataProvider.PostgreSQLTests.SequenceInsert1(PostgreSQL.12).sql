﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE sequencetestseq RESTART WITH 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Value_1 Text(8) -- String
SET     @Value_1 = 'SeqValue'

INSERT INTO "SequenceTest1"
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT 2

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest1" t1
WHERE
	t1."ID" = :id

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"SequenceTest1" t1
WHERE
	t1."Value" = 'SeqValue'

