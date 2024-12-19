BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestConstantsData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestConstantsData"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestConstantsData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestConstantsData"
			(
				"Id"                Int                                    NOT NULL,
				"GuidValue"         CHAR(16) CHARACTER SET OCTETS          NOT NULL,
				"GuidNullableValue" CHAR(16) CHARACTER SET OCTETS,
				"StringValue"       VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TestConstantsData" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "TestConstantsData"
(
	"Id",
	"GuidValue",
	"GuidNullableValue",
	"StringValue"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',X'BC7B663D0FDE43278F925D8CC3A11D11',CAST('StrValue' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"e"."Id",
	"e"."GuidValue",
	"e"."GuidNullableValue",
	"e"."StringValue"
FROM
	"TestConstantsData" "e"
WHERE
	"e"."GuidValue" = X'BC7B663D0FDE43278F925D8CC3A11D11' AND
	"e"."GuidNullableValue" = X'BC7B663D0FDE43278F925D8CC3A11D11'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."GuidValue",
	"t1"."GuidNullableValue",
	"t1"."StringValue"
FROM
	"TestConstantsData" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestConstantsData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestConstantsData"';
END

