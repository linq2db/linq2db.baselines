BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

WITH RECURSIVE "CTE_1" ("Id")
AS
(
	SELECT
		t."Id"
	FROM
		"HierarchyTree" t
	WHERE
		t."ParentId" IS NULL
),
"CTE_2" ("ParentId", "Id")
AS
(
	SELECT
		t1."ParentId",
		t1."Id"
	FROM
		"HierarchyTree" t1
),
"hierarchyDown" ("Id")
AS
(
	SELECT
		t2."Id"
	FROM
		"CTE_1" t2
	UNION ALL
	SELECT
		t_1."Id"
	FROM
		"hierarchyDown" t3
			INNER JOIN "CTE_2" t_1 ON t_1."ParentId" = t3."Id"
)
SELECT
	COUNT(*)
FROM
	"hierarchyDown" t4

