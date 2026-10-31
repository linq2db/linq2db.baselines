-- PostgreSQL.13 PostgreSQL12
DECLARE @ids Integer -- Int32
SET     @ids = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :ids

-- PostgreSQL.13 PostgreSQL12
DECLARE @ids Integer -- Int32
SET     @ids = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :ids

