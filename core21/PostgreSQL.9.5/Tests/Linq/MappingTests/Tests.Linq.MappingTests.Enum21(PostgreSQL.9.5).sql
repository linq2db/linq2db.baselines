BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @gender Text(1) -- AnsiStringFixedLength
SET     @gender = 'M'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."Gender" = :gender

