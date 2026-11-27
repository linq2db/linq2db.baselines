-- PostgreSQL.13 PostgreSQL12
WITH RECURSIVE cte ("Id", "Str")
AS
(
	SELECT
		p."Id",
		p."Str"
	FROM
		"CteStringEnumTable" p
	UNION ALL
	SELECT
		t1."Id",
		'THIS_IS_TWO'::VarChar(50)
	FROM
		cte t1
			INNER JOIN "CteStringEnumTable" r ON t1."Id" = r."Id" + 1
)
SELECT
	t2."Id",
	t2."Str"
FROM
	cte t2

