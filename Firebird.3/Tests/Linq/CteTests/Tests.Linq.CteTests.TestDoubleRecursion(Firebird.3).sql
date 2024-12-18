BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyTree"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "HierarchyTree"
			(
				"Id"       Int NOT NULL,
				"ParentId" Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
SELECT 1,NULL FROM rdb$database UNION ALL
SELECT 2,NULL FROM rdb$database UNION ALL
SELECT 10,1 FROM rdb$database UNION ALL
SELECT 11,1 FROM rdb$database UNION ALL
SELECT 20,2 FROM rdb$database UNION ALL
SELECT 22,2 FROM rdb$database UNION ALL
SELECT 100,10 FROM rdb$database UNION ALL
SELECT 101,10 FROM rdb$database UNION ALL
SELECT 102,10 FROM rdb$database UNION ALL
SELECT 110,11 FROM rdb$database UNION ALL
SELECT 111,11 FROM rdb$database UNION ALL
SELECT 112,11 FROM rdb$database UNION ALL
SELECT 200,20 FROM rdb$database UNION ALL
SELECT 201,20 FROM rdb$database UNION ALL
SELECT 202,20 FROM rdb$database UNION ALL
SELECT 210,21 FROM rdb$database UNION ALL
SELECT 211,21 FROM rdb$database UNION ALL
SELECT 212,21 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

WITH RECURSIVE CTE_1 ("Id")
AS
(
	SELECT
		"t"."Id"
	FROM
		"HierarchyTree" "t"
	WHERE
		"t"."ParentId" IS NULL
),
CTE_2 ("ParentId", "Id")
AS
(
	SELECT
		"t1"."ParentId",
		"t1"."Id"
	FROM
		"HierarchyTree" "t1"
),
"hierarchyDown" ("Id")
AS
(
	SELECT
		"t2"."Id"
	FROM
		CTE_1 "t2"
	UNION ALL
	SELECT
		"t_1"."Id"
	FROM
		"hierarchyDown" "t3"
			INNER JOIN CTE_2 "t_1" ON "t_1"."ParentId" = "t3"."Id" AND "t_1"."ParentId" IS NOT NULL
)
SELECT
	COUNT(*)
FROM
	"hierarchyDown" "t4"
		INNER JOIN "hierarchyDown" "h2" ON "h2"."Id" = "t4"."Id"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyTree"';
END

