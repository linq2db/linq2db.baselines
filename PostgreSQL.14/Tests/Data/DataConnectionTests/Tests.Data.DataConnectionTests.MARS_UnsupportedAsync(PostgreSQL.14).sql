-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	t1."PersonID",
	t1."Taxonomy"
FROM
	"Doctor" t1
WHERE
	t1."PersonID" = :ID

