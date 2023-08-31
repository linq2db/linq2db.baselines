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
SELECT 1,CAST('{"some":"str1"}' AS VarChar(200) CHARACTER SET UNICODE_FSS),CAST('[{"Value":"Value1"}]' AS VarChar(200) CHARACTER SET UNICODE_FSS),CAST('Value1' AS VarChar(50) CHARACTER SET UNICODE_FSS),CAST('Value1' AS VarChar(50) CHARACTER SET UNICODE_FSS),CAST('Value1' AS VarChar(50) CHARACTER SET UNICODE_FSS),CAST('Value1' AS VarChar(50) CHARACTER SET UNICODE_FSS),CAST('Y' AS VarChar(1) CHARACTER SET UNICODE_FSS),CAST('F' AS VarChar(1) CHARACTER SET UNICODE_FSS),NULL FROM rdb$database UNION ALL
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
DECLARE @EnumNullable VarChar -- String
SET     @EnumNullable = NULL
DECLARE @EnumNullable_1 VarChar -- String
SET     @EnumNullable_1 = NULL
DECLARE @EnumNullable_2 VarChar -- String
SET     @EnumNullable_2 = NULL
DECLARE @EnumNullable_3 VarChar -- String
SET     @EnumNullable_3 = NULL

SELECT
	CASE
		WHEN ("t1"."EnumNullable" <> Cast(@EnumNullable as VarChar(50) CHARACTER SET UNICODE_FSS) OR "t1"."EnumNullable" IS NULL AND Cast(@EnumNullable as VarChar(50) CHARACTER SET UNICODE_FSS) IS NOT NULL OR "t1"."EnumNullable" IS NOT NULL AND Cast(@EnumNullable as VarChar(50) CHARACTER SET UNICODE_FSS) IS NULL)
			THEN "t1"."EnumNullable"
		ELSE "t1"."Enum"
	END
FROM
	"ValueConversion" "t1"
UNION ALL
SELECT
	CASE
		WHEN ("t1_1"."EnumNullable" <> Cast(@EnumNullable_1 as VarChar(50) CHARACTER SET UNICODE_FSS) OR "t1_1"."EnumNullable" IS NULL AND Cast(@EnumNullable_2 as VarChar(50) CHARACTER SET UNICODE_FSS) IS NOT NULL OR "t1_1"."EnumNullable" IS NOT NULL AND Cast(@EnumNullable_3 as VarChar(50) CHARACTER SET UNICODE_FSS) IS NULL)
			THEN "t1_1"."EnumNullable"
		ELSE "t1_1"."Enum"
	END
FROM
	"ValueConversion" "t1_1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueConversion')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ValueConversion"';
END

