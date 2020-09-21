BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @fm Text(1) -- AnsiStringFixedLength
SET     @fm = 'F'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."Gender" <> :fm

