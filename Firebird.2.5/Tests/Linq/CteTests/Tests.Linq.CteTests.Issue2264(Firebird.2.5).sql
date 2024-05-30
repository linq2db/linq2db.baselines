BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFolder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFolder"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFolder')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestFolder"
			(
				"Id"       CHAR(16) CHARACTER SET OCTETS          NOT NULL,
				"Label"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"ParentId" CHAR(16) CHARACTER SET OCTETS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

WITH RECURSIVE CTE
(
	"Level_1",
	"Id",
	"ParentId",
	"Label",
	"Entity_Id",
	"Entity_Label",
	"Entity_ParentId"
)
AS
(
	SELECT
		0,
		"c_1"."Id",
		"c_1"."ParentId",
		"c_1"."Label",
		"c_1"."Id",
		"c_1"."Label",
		"c_1"."ParentId"
	FROM
		"TestFolder" "c_1"
	WHERE
		"c_1"."ParentId" IS NULL
	UNION ALL
	SELECT
		"r"."Level_1" + 1,
		"t1"."Id",
		"t1"."ParentId",
		"r"."Label" || '/' || "t1"."Label",
		"t1"."Id",
		"t1"."Label",
		"t1"."ParentId"
	FROM
		"TestFolder" "t1"
			INNER JOIN CTE "r" ON "t1"."ParentId" = "r"."Id"
)
SELECT
	"t2"."Level_1",
	"t2"."Id",
	"t2"."ParentId",
	"t2"."Label",
	"t2"."Entity_Id",
	"t2"."Entity_Label",
	"t2"."Entity_ParentId"
FROM
	CTE "t2"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFolder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFolder"';
END

