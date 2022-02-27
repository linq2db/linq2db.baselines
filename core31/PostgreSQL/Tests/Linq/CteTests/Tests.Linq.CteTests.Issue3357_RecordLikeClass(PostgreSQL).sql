BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

WITH RECURSIVE cte ("Id", "FirstName", "LastName")
AS
(
	SELECT
		p."PersonID",
		Cast(p."FirstName" as text),
		Cast(p."LastName" as text)
	FROM
		"Person" p
	UNION ALL
	SELECT
		r."PersonID",
		Cast(r."FirstName" as text),
		Cast(r."LastName" as text)
	FROM
		cte p_1
			INNER JOIN "Person" r ON p_1."FirstName" = r."LastName"
)
SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	cte t1

