-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'F'

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."Gender" = :Gender
ORDER BY
	p."PersonID"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."Gender" = :Gender
ORDER BY
	p."PersonID"

