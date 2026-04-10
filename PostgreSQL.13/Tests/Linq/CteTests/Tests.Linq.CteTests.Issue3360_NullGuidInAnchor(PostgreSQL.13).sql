-- PostgreSQL.13 PostgreSQL

WITH RECURSIVE cte ("Id", "Guid")
AS
(
	SELECT
		p."Id",
		NULL::uuid
	FROM
		"Issue3360NullInAnchor" p
	UNION ALL
	SELECT
		t2."Id",
		r."Guid"
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
	t3."Guid"
FROM
	cte t3

