﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
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
RETURNING 
	"ID"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."ID",
	t1."Value"
FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 2

DELETE FROM
	"SequenceTest2" t1
WHERE
	t1."ID" = :id1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"SequenceTest2" t1
WHERE
	t1."Value" = 'SeqValue'

