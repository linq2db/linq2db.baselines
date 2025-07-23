BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	s."FirstName",
	s."LastName",
	s."FullName"
FROM
	(
		SELECT
			p."FirstName",
			p."LastName" || ', ' || p."FirstName" as "LastName",
			(((p."LastName" || ', ' || p."FirstName") || ' (' || Coalesce(p."MiddleName", '')) || ' + ' || Coalesce(p."MiddleName", '')) || ')' as "FullName"
		FROM
			"Person" p
	) s
WHERE
	s."FirstName" IS NOT NULL OR s."LastName" IS NOT NULL OR
	s."FullName" IS NOT NULL
ORDER BY
	s."FirstName",
	s."LastName"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

