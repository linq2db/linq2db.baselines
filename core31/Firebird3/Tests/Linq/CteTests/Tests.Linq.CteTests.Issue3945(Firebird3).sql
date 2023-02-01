BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFolder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFolder"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @Id Guid
SET     @Id = X'07C6655FCC9E40339C763EF80F93AC98'

INSERT INTO "TestFolder"
(
	"Id",
	"Label"
)
WITH CTE ("Id", "Label", "ParentId")
AS
(
	SELECT
		"c_1"."Id",
		"c_1"."Label",
		"c_1"."ParentId"
	FROM
		"TestFolder" "c_1"
	WHERE
		"c_1"."ParentId" IS NOT NULL
)
SELECT
	Cast(@Id as CHAR(16) CHARACTER SET OCTETS),
	"parent"."Label" || '/' || "child"."Label"
FROM
	CTE "child"
		INNER JOIN "TestFolder" "parent" ON "child"."ParentId" = "parent"."Id"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFolder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFolder"';
END

