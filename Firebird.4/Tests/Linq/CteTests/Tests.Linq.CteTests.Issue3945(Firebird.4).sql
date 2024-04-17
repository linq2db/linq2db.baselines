﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFolder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFolder"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
DECLARE @Guid1 Guid
SET     @Guid1 = X'BC7B663D0FDE43278F925D8CC3A11D11'

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
	Cast(@Guid1 as CHAR(16) CHARACTER SET OCTETS),
	"parent"."Label" || '/' || "child"."Label"
FROM
	CTE "child"
		INNER JOIN "TestFolder" "parent" ON "child"."ParentId" = "parent"."Id"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFolder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFolder"';
END

