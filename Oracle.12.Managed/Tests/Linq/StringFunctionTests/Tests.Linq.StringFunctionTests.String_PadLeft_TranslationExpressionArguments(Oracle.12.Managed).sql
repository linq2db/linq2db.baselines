BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	s.ID,
	s."FirstName"
FROM
	(
		SELECT
			CASE
				WHEN Length(p."FirstName") >= p."PersonID" THEN p."FirstName"
				ELSE LPAD(p."FirstName", p."PersonID", '.')
			END as "FirstName",
			p."PersonID" as ID
		FROM
			"Person" p
	) s
WHERE
	s."FirstName" IS NOT NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

