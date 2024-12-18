BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyTree"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyData"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "HierarchyData"
			(
				"Id"    Int NOT NULL,
				"Level" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "HierarchyData"
(
	"Id",
	"Level"
)
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
"hierarchyDown" ("Level_1", "Id")
AS
(
	SELECT
		CAST(0 AS Int),
		"t2"."Id"
	FROM
		CTE_1 "t2"
	UNION ALL
	SELECT
		"t3"."Level_1" + 1,
		"t_1"."Id"
	FROM
		"hierarchyDown" "t3"
			INNER JOIN CTE_2 "t_1" ON "t_1"."ParentId" = "t3"."Id" AND "t_1"."ParentId" IS NOT NULL
)
SELECT
	"t4"."Id",
	"t4"."Level_1"
FROM
	"hierarchyDown" "t4"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Level"
FROM
	"HierarchyData" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyData"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyTree"';
END

