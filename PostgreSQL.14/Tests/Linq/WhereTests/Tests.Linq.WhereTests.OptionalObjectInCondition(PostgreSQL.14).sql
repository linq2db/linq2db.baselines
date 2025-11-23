-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @p Text(1) -- String
SET     @p = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	1 = 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @p Text(1) -- String
SET     @p = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :p

