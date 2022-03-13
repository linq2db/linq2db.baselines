﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueConversion')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ValueConversion"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue",
	"AnotherBoolValue",
	"DateTimeNullable"
)
SELECT 1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y','F',NULL FROM rdb$database UNION ALL
SELECT 2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','F',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','F',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N','F',NULL FROM rdb$database UNION ALL
SELECT 5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','F',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','F',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N','F',NULL FROM rdb$database UNION ALL
SELECT 8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','F',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','F',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 10,NULL,NULL,'Value1','Value2','Value2','Value2','N','F',NULL FROM rdb$database

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value2 VarChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- String
SET     @EnumWithNullDeclarative = NULL

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = "ValueConversion"."Value1",
	"ValueConversion"."Value2" = @Value2,
	"ValueConversion"."EnumWithNull" = @EnumWithNull,
	"ValueConversion"."EnumWithNullDeclarative" = @EnumWithNullDeclarative
WHERE
	"ValueConversion"."Id" = 1

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

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
	"e"."Id" = 1

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value1 VarChar(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 VarChar(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = @Value1,
	"ValueConversion"."Value2" = @Value2,
	"ValueConversion"."Enum" = @Enum,
	"ValueConversion"."EnumNullable" = @EnumNullable,
	"ValueConversion"."EnumWithNull" = @EnumWithNull,
	"ValueConversion"."EnumWithNullDeclarative" = @EnumWithNullDeclarative,
	"ValueConversion"."BoolValue" = @BoolValue,
	"ValueConversion"."AnotherBoolValue" = @AnotherBoolValue,
	"ValueConversion"."DateTimeNullable" = @DateTimeNullable
WHERE
	"ValueConversion"."Id" = @Id

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

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
	"e"."Id" = 2

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- String
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 3

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = @Value1,
	"ValueConversion"."Value2" = @Value2,
	"ValueConversion"."Enum" = @Enum,
	"ValueConversion"."EnumNullable" = @EnumNullable,
	"ValueConversion"."EnumWithNull" = @EnumWithNull,
	"ValueConversion"."EnumWithNullDeclarative" = @EnumWithNullDeclarative,
	"ValueConversion"."BoolValue" = @BoolValue,
	"ValueConversion"."AnotherBoolValue" = @AnotherBoolValue,
	"ValueConversion"."DateTimeNullable" = @DateTimeNullable
WHERE
	"ValueConversion"."Id" = @Id

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

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
	"e"."Id" = 3

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueConversion')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ValueConversion"';
END

