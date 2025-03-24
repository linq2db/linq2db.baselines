BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		OUTER APPLY (
			SELECT
				*
			FROM
				(
					SELECT 1 AS "PersonID", 'Janet' AS "LastName", p."FirstName" AS "FirstName" FROM sys.dual
					UNION ALL
					SELECT 2, 'Doe', NULL FROM sys.dual) n
			WHERE
				p."LastName" = n."LastName"
		) n_1

