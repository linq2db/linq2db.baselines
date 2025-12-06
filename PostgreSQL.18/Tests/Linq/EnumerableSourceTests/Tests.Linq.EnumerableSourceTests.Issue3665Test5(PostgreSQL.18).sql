-- PostgreSQL.18 PostgreSQL

SELECT
	y.item
FROM
	"Person" x
		CROSS JOIN (VALUES
			('M'), ('F'), ('U'), ('O')
		) y(item)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

