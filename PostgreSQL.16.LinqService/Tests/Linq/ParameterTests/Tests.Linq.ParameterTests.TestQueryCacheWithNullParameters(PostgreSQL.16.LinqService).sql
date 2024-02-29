BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

