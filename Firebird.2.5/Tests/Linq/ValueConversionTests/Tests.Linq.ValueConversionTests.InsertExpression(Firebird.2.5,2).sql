BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueConversion')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ValueConversion"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueConversion')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ValueConversion"
			(
				"Id"                      Int                                    NOT NULL,
				"Value1"                  VarChar(200) CHARACTER SET UNICODE_FSS,
				"Value2"                  VarChar(200) CHARACTER SET UNICODE_FSS,
				"Enum"                    VarChar(50) CHARACTER SET UNICODE_FSS  NOT NULL,
				"EnumNullable"            VarChar(50) CHARACTER SET UNICODE_FSS,
				"EnumWithNull"            VarChar(50) CHARACTER SET UNICODE_FSS,
				"EnumWithNullDeclarative" VarChar(50) CHARACTER SET UNICODE_FSS,
				"BoolValue"               VarChar(1) CHARACTER SET UNICODE_FSS   NOT NULL,
				"AnotherBoolValue"        VarChar(1) CHARACTER SET UNICODE_FSS   NOT NULL,
				"DateTimeNullable"        TimeStamp,

				CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @iteration Integer -- Int32
SET     @iteration = 2
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted VarChar(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue VarChar -- String
SET     @boolValue = 'Y'
DECLARE @boolValue_1 VarChar -- String
SET     @boolValue_1 = 'T'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Enum",
	"Value2",
	"BoolValue",
	"AnotherBoolValue"
)
VALUES
(
	CAST(@iteration AS Int),
	CAST(@Value1 AS VARCHAR(2)),
	CAST(@Enum AS VARCHAR(6)),
	CAST(@inserted AS VARCHAR(22)),
	CAST(@boolValue AS VarChar(1) CHARACTER SET UNICODE_FSS),
	CAST(@boolValue_1 AS VarChar(1) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @iteration Integer -- Int32
SET     @iteration = 2

SELECT FIRST 2
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue",
	"e"."AnotherBoolValue",
	"e"."DateTimeNullable"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = @iteration

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueConversion')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ValueConversion"';
END

