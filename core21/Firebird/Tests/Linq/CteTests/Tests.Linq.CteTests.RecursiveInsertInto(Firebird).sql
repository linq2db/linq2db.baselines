BeforeExecute
-- Firebird

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
-- Firebird

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
-- Firebird

CREATE TABLE "HierarchyData"
(
	"Id"    Int NOT NULL,
	"Level" Int NOT NULL
)

BeforeExecute
-- Firebird

INSERT INTO "HierarchyData"
(
	"Id",
	"Level"
)
SELECT * FROM
(
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
	"hierarchyDown" ("Id", "Level")
	AS
	(
		SELECT
			"t_1"."Id",
			0
		FROM
			CTE_1 "t_1"
		UNION ALL
		SELECT
			"t_2"."Id",
			"h"."Level" + 1
		FROM
			"hierarchyDown" "h"
				INNER JOIN CTE_2 "t_2" ON "t_2"."ParentId" = "h"."Id"
	)
	SELECT
		"t2"."Id",
		"t2"."Level"
	FROM
		"hierarchyDown" "t2"
)

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Level"
FROM
	"HierarchyData" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DROP TABLE "HierarchyData"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyTree"';
END

