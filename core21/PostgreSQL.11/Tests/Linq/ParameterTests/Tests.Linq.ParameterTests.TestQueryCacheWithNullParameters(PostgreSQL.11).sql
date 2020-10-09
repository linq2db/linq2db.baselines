BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	Count(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" IS NULL

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT 
	Count(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

