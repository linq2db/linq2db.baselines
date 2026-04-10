-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
		t2."Id",
		'Str2'::VarChar
	FROM
		(
			SELECT
				t1."Id"
			FROM
				cte t1
		) t2
			INNER JOIN "Issue3360Table" r ON t2."Id" = r."Id" + 1
)
SELECT
	t3."Id",
	t3."Str"
FROM
	cte t3

