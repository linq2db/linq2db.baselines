﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value_1 Text(8) -- String
SET     @Value_1 = 'SeqValue'

INSERT INTO "SequenceTest2"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT 2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest2" t1
WHERE
	t1."ID" = :id

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'

