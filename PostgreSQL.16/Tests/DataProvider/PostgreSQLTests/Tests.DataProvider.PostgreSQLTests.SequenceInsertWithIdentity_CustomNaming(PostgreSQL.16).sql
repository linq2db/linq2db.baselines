﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."Value" = 'SeqValue' AND t1."Value" IS NOT NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Value Text(8) -- String
SET     @Value = 'SeqValue'

INSERT INTO "SequenceCustomNamingTest"
(
	"ID",
	"Value"
)
VALUES
(
	nextval('test_schema."SequenceCustomNamingTest__seq__"'),
	:Value
)
RETURNING 
	"ID"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."Value" = 'SeqValue' AND t1."Value" IS NOT NULL
LIMIT 2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

DELETE FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."ID" = :id1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."Value" = 'SeqValue' AND t1."Value" IS NOT NULL

