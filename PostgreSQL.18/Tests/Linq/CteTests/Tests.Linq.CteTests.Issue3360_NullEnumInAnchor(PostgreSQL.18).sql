-- PostgreSQL.18 PostgreSQL

WITH RECURSIVE cte ("Id", "Enum1")
AS
(
	SELECT
		p."Id",
		NULL::VarChar(50)
	FROM
		"Issue3360NullInAnchor" p
	UNION ALL
	SELECT
		t2."Id",
		'THIS_IS_ONE'::VarChar(50)
	FROM
		(
			SELECT
				t1."Id"
			FROM
				cte t1
		) t2
			INNER JOIN "Issue3360NullInAnchor" r ON t2."Id" = r."Id" + 100
)
SELECT
	t3."Id",
	t3."Enum1"
FROM
	cte t3

