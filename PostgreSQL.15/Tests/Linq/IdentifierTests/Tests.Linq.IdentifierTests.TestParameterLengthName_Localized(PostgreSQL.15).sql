BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = :p

