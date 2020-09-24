BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Boolean
SET     @p1 = False

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
		WHEN :p1 = True THEN 0
		ELSE Position('oh' in p."FirstName") - 1
	END = 1 AND
	p."PersonID" = 1

