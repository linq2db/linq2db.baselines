BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

WITH "cte" ("Id", "FirstName", "LastName")
AS
(
	SELECT
		p."PersonID",
		p."FirstName",
		p."LastName"
	FROM
		"Person" p
	UNION ALL
	SELECT
		r."PersonID",
		r."FirstName",
		r."LastName"
	FROM
		"cte" p_1
			INNER JOIN "Person" r ON p_1."FirstName" = r."LastName"
)
SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"cte" t1

