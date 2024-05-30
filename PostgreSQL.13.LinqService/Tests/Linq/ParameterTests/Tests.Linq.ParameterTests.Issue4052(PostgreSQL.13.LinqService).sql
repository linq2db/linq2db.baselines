BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	c_1."FirstName",
	c_1."PersonID",
	c_1."LastName",
	c_1."MiddleName",
	c_1."Gender"
FROM
	"Person" c_1
WHERE
	c_1."PersonID" = :ID AND (Lower(Trim(c_1."MiddleName")) = '' AND c_1."MiddleName" IS NOT NULL OR c_1."MiddleName" IS NULL)

