BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

