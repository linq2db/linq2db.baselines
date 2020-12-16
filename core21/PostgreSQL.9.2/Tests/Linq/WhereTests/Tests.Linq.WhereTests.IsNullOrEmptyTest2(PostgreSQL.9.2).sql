BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	nm."FirstName"
FROM
	"Person" nm
WHERE
	(nm."FirstName" IS NOT NULL AND Length(nm."FirstName") <> 0)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

