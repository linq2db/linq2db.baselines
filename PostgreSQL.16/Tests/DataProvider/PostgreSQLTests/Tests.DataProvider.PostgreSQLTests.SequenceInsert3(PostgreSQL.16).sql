﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

ALTER SEQUENCE sequencetestseq RESTART WITH 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue' AND t1."Value" IS NOT NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Value Text(8) -- String
SET     @Value = 'SeqValue'

INSERT INTO "SequenceTest3"
(
	"ID",
	"Value"
)
VALUES
(
	nextval('sequencetestseq'),
	:Value
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue' AND t1."Value" IS NOT NULL
LIMIT 2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest3" t1
WHERE
	t1."ID" = :id

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue' AND t1."Value" IS NOT NULL

