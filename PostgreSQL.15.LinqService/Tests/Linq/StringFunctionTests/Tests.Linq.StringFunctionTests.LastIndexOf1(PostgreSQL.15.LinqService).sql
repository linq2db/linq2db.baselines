BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Length Integer -- Int32
SET     @Length = 1

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(Length(p."LastName") - Position('p' in Reverse(p."LastName"))) - :Length = 1 AND
	Position('p' in p."LastName") <> 0 AND p."PersonID" = 1

