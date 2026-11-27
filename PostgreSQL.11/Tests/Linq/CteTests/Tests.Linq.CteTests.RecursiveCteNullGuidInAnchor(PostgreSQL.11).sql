-- PostgreSQL.11 PostgreSQL
WITH RECURSIVE cte ("Id", "Guid")
AS
(
	SELECT
		p."Id",
		NULL::uuid
	FROM
		"CteNullInAnchorTable" p
	UNION ALL
	SELECT
		t1."Id",
		r."Guid"
	FROM
		cte t1
			INNER JOIN "CteNullInAnchorTable" r ON t1."Id" = r."Id" + 100
)
SELECT
	t2."Id",
	t2."Guid"
FROM
	cte t2

