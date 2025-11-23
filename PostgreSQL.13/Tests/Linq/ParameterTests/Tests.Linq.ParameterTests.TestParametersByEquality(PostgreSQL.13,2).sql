-- PostgreSQL.13 PostgreSQL
DECLARE @personId Integer -- Int32
SET     @personId = 1
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 1

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender",
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :personId AND p."PersonID" = :personId_1

-- PostgreSQL.13 PostgreSQL
DECLARE @personId Integer -- Int32
SET     @personId = 1
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 2

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender",
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :personId AND p."PersonID" = :personId_1

