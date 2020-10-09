BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Count(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" IS NULL

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT 
	Count(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

