-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

WITH RECURSIVE cte ("Id", "Str")
AS
(
	SELECT
		p."Id",
		'Str1'::VarChar
	FROM
		"Issue3360Table" p
	UNION ALL
	SELECT
		t1."Id",
		'Str2'::VarChar
	FROM
		cte t1
			INNER JOIN "Issue3360Table" r ON t1."Id" = r."Id" + 1
)
SELECT
	t2."Id",
	t2."Str"
FROM
	cte t2

