﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueConversion')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ValueConversion"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Enum",
	"t1"."EnumNullable",
	"t1"."EnumWithNull",
	"t1"."EnumWithNullDeclarative",
	"t1"."BoolValue",
	"t1"."AnotherBoolValue",
	"t1"."DateTimeNullable"
FROM
	"ValueConversion" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	"t"."Value1",
	"t"."Value2"
FROM
	"ValueConversion" "t"
ORDER BY
	"t"."Id"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2"
FROM
	(
		SELECT
			"t"."Id",
			"t"."Value1",
			"t"."Value2"
		FROM
			"ValueConversion" "t"
	) "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t2"."Id",
	"t2"."Value1",
	"t2"."Value2"
FROM
	(
		SELECT
			"t"."Id",
			"t"."Value1",
			"t"."Value2"
		FROM
			"ValueConversion" "t"
		UNION ALL
		SELECT
			"t1"."Id",
			"t1"."Value1",
			"t1"."Value2"
		FROM
			(
				SELECT
					"t_1"."Id",
					"t_1"."Value1",
					"t_1"."Value2"
				FROM
					"ValueConversion" "t_1"
			) "t1"
	) "t2"
ORDER BY
	"t2"."Id"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"t1"."Value2"
FROM
	(
		SELECT
			"t"."Id",
			"t"."Value2"
		FROM
			"ValueConversion" "t"
	) "t1"
ORDER BY
	"t1"."Id"
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueConversion')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ValueConversion"';
END

