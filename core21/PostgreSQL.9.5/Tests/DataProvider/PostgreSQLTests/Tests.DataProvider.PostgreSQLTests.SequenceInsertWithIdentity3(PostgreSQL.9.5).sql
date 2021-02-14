﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE sequencetestseq RESTART WITH 1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue'

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Value_1 Text(8) -- String
SET     @Value_1 = 'SeqValue'

INSERT INTO "SequenceTest3"
(
	"ID",
	"Value"
)
VALUES
(
	nextval('sequencetestseq'),
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
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue'
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

DELETE FROM
	"SequenceTest3" t1
WHERE
	t1."ID" = :id1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"SequenceTest3" t1
WHERE
	t1."Value" = 'SeqValue'

