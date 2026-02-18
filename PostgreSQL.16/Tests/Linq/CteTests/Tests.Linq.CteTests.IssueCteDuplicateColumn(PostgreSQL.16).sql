-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH "CTE_1" ("Value1", "ParentID")
AS
(
	SELECT
		p."Value1",
		p."ParentID"
	FROM
		"Parent" p
	WHERE
		p."Value1" IS NOT NULL
),
"CTE_2" ("Id1", "Id2")
AS
(
	SELECT
		t1."ParentID",
		t1."Value1"
	FROM
		"CTE_1" t1
	UNION ALL
	SELECT
		t2."ParentID",
		record2."Value1"
	FROM
		"CTE_1" t2
			INNER JOIN "CTE_1" record2 ON t2."Value1" = record2."ParentID"
)
SELECT
	t3."Id1",
	t3."Id2"
FROM
	"CTE_2" t3

