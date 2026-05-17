-- Oracle.23.Managed Oracle.Managed Oracle12

WITH "cte" ("FirstName")
AS
(
	SELECT
		p."FirstName"
	FROM
		"Person" p
	UNION ALL
	SELECT
		r."FirstName" || '/' || r."LastName"
	FROM
		"cte" t1
			INNER JOIN "Person" r ON t1."FirstName" = r."LastName"
)
SELECT
	t2."FirstName"
FROM
	"cte" t2

