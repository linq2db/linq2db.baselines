BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestConstantsData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestConstantsData"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestConstantsData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestConstantsData"
			(
				"Id"                Int                                    NOT NULL,
				"GuidValue"         BINARY(16)                             NOT NULL,
				"GuidNullableValue" BINARY(16),
				"StringValue"       VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TestConstantsData" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "TestConstantsData"
(
	"Id",
	"GuidValue",
	"GuidNullableValue",
	"StringValue"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',X'BC7B663D0FDE43278F925D8CC3A11D11',CAST('StrValue' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"e"."Id",
	"e"."GuidValue",
	"e"."GuidNullableValue",
	"e"."StringValue"
FROM
	"TestConstantsData" "e"
WHERE
	"e"."StringValue" || '1' = 'StrValue1'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."GuidValue",
	"t1"."GuidNullableValue",
	"t1"."StringValue"
FROM
	"TestConstantsData" "t1"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestConstantsData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestConstantsData"';
END

