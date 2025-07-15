BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	x."PersonID" + y.item
FROM
	"Person" x
		CROSS JOIN (VALUES
			(0), (1), (2), (3)
		) y(item)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

