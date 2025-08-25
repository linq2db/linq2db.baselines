BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip 

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip 

