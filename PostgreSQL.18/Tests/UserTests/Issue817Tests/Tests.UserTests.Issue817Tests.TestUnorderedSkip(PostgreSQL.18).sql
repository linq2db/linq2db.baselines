-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	1
FROM
	"Person" t1
OFFSET :skip 

