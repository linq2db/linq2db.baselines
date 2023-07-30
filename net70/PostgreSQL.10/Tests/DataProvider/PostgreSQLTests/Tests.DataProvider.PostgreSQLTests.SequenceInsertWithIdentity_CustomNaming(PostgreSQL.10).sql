﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."Value" = 'SeqValue'

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT :take

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

DELETE FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."ID" = :id1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"SequenceCustomNamingTest" t1
WHERE
	t1."Value" = 'SeqValue'

