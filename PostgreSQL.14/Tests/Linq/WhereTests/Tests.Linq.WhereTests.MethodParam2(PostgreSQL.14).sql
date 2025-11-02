-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

