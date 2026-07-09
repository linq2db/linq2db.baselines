-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Person" t1

-- PostgreSQL.19 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	1
FROM
	"Person" t1
OFFSET :skip 

