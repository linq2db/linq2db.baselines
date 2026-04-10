-- PostgreSQL.18 PostgreSQL

WITH RECURSIVE cte ("Id", "Str")
AS
(
	SELECT
		p."Id",
		p."Str"
	FROM
		"Issue3360WithEnum" p
	UNION ALL
	SELECT
		t2."Id",
		'THIS_IS_TWO'::VarChar(50)
	FROM
		(
			SELECT
				t1."Id"
			FROM
				cte t1
		) t2
			INNER JOIN "Issue3360WithEnum" r ON t2."Id" = r."Id" + 1
)
SELECT
	t3."Id",
	t3."Str"
FROM
	cte t3

