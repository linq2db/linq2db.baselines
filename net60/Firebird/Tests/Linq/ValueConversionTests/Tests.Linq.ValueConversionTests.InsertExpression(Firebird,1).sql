﻿BeforeExecute
-- Firebird

CREATE TABLE "ValueConversion"
(
	"Id"                      Int                                    NOT NULL,
	"Value1"                  VarChar(200) CHARACTER SET UNICODE_FSS,
	"Value2"                  VarChar(200) CHARACTER SET UNICODE_FSS,
	"Enum"                    VarChar(50) CHARACTER SET UNICODE_FSS  NOT NULL,
	"EnumNullable"            VarChar(50),
	"EnumWithNull"            VarChar(50),
	"EnumWithNullDeclarative" VarChar(50),
	"BoolValue"               VarChar(1)                             NOT NULL,
	"AnotherBoolValue"        VarChar(1)                             NOT NULL,
	"DateTimeNullable"        TimeStamp,

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @iteration Integer -- Int32
SET     @iteration = 1
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted VarChar(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue VarChar -- String
SET     @boolValue = 'N'
DECLARE @boolValue_1 VarChar -- String
SET     @boolValue_1 = 'F'

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
	@iteration,
	@Value1,
	@Enum,
	@inserted,
	@boolValue,
	@boolValue_1
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @iteration Integer -- Int32
SET     @iteration = 1

SELECT FIRST @take
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
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueConversion')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ValueConversion"';
END

