BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(1) -- String
SET     @p = 'e'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	CASE
		WHEN 1 = 0 THEN 2
		ELSE Position(:p in Substring(p."LastName", 3, Length(p."LastName") - 3)) + 1
	END = 4 AND
	p."PersonID" = 2

