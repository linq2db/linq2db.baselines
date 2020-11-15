BeforeExecute
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
	"DateTimeNullable"        TimeStamp,

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

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
	"DateTimeNullable"
)
SELECT 1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y',NULL FROM rdb$database UNION ALL
SELECT 2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N',NULL FROM rdb$database UNION ALL
SELECT 5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N',NULL FROM rdb$database UNION ALL
SELECT 8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y',CAST('2020-02-29' AS timestamp) FROM rdb$database UNION ALL
SELECT 10,NULL,NULL,'Value1','Value2','Value2','Value2','N',NULL FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Enum",
	"t1"."EnumNullable",
	"t1"."EnumWithNull",
	"t1"."EnumWithNullDeclarative",
	"t1"."BoolValue",
	"t1"."DateTimeNullable"
FROM
	"ValueConversion" "t1"

BeforeExecute
-- Firebird

SELECT
	"t"."Id",
	"t"."Value1",
	"t"."Value2"
FROM
	"ValueConversion" "t"

BeforeExecute
-- Firebird

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

BeforeExecute
-- Firebird

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

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST @take SKIP @skip
	"q"."Value2"
FROM
	(
		SELECT
			"t"."Id",
			"t"."Value2"
		FROM
			"ValueConversion" "t"
	) "q"
ORDER BY
	"q"."Id"

BeforeExecute
-- Firebird

DROP TABLE "ValueConversion"

