-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip 

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip 

