BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (VALUES
			('Doe')
		) n(item) ON p."LastName" = n.item

