-- PostgreSQL.15 PostgreSQL

WITH RECURSIVE cte ("Id", "Str")
AS
(
	SELECT
		p."Id",
		p."Str"
	FROM
		"Issue3360Table" p
	UNION ALL
	SELECT
		t1."Id_1",
		'Str'::VarChar
	FROM
		(
			SELECT
				r."Id",
				p_1."Id" as "Id_1"
			FROM
				cte p_1
					CROSS JOIN "Issue3360Table" r
		) t1
	WHERE
		t1."Id_1" = t1."Id" + 1
)
SELECT
	t2."Id",
	t2."Str"
FROM
	cte t2

