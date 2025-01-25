BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFolder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFolder"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @Guid1 Guid
SET     @Guid1 = X'BC7B663D0FDE43278F925D8CC3A11D11'

INSERT INTO "TestFolder"
(
	"Id",
	"Label"
)
WITH CTE ("ParentId", "Label")
AS
(
	SELECT
		"c_1"."ParentId",
		"c_1"."Label"
	FROM
		"TestFolder" "c_1"
	WHERE
		"c_1"."ParentId" IS NOT NULL
)
SELECT
	CAST(@Guid1 AS CHAR(16) CHARACTER SET OCTETS),
	"parent"."Label" || '/' || "child"."Label"
FROM
	CTE "child"
		INNER JOIN "TestFolder" "parent" ON "child"."ParentId" = "parent"."Id"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFolder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFolder"';
END

