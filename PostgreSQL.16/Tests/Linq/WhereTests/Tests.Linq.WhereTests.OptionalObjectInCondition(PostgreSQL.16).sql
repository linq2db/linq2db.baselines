-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Id Text(1) -- String
SET     @Id = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :Id

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Id Text(1) -- String
SET     @Id = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :Id

