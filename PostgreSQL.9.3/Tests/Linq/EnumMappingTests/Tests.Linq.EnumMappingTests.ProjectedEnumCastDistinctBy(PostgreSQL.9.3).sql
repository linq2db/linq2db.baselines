-- PostgreSQL.9.3 PostgreSQL
SELECT
	p_1."Gender"
FROM
	(
		SELECT DISTINCT ON (p."Gender")
			p."Gender"
		FROM
			"Person" p
		ORDER BY
			p."Gender",
			p."PersonID"
	) p_1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

