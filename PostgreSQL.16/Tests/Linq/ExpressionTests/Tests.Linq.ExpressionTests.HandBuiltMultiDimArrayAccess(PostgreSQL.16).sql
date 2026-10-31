-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

