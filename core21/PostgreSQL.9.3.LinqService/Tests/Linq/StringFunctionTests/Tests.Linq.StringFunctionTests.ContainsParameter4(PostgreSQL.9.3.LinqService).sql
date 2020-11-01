BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p_1."FirstName",
	p_1."PersonID",
	p_1."LastName",
	p_1."MiddleName",
	p_1."Gender"
FROM
	(
		SELECT
			CASE
				WHEN p."FirstName" LIKE '%Jo%' ESCAPE '~'
					THEN True
				ELSE False
			END as "Field1",
			p."FirstName",
			p."PersonID",
			p."LastName",
			p."MiddleName",
			p."Gender"
		FROM
			"Person" p
	) p_1
WHERE
	(p_1."Field1" = True AND p_1."Field1" IS NOT NULL)
ORDER BY
	p_1."Field1"

