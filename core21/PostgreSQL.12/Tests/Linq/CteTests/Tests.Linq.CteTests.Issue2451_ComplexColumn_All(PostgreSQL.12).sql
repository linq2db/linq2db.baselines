BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

WITH RECURSIVE cte ("FirstName")
AS
(
	SELECT
		Cast(p."FirstName" as text)
	FROM
		"Person" p
	UNION ALL
	SELECT
		Cast((r."FirstName" || '/' || r."LastName") as text)
	FROM
		cte p_1
			INNER JOIN "Person" r ON p_1."FirstName" = r."LastName"
)
SELECT
	t1."FirstName"
FROM
	cte t1

