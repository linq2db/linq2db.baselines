BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

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
SELECT 2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N',CAST('2020-11-13' AS timestamp) FROM rdb$database UNION ALL
SELECT 3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N',CAST('2020-11-13' AS timestamp) FROM rdb$database UNION ALL
SELECT 4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N',NULL FROM rdb$database UNION ALL
SELECT 5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y',CAST('2020-11-13' AS timestamp) FROM rdb$database UNION ALL
SELECT 6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N',CAST('2020-11-13' AS timestamp) FROM rdb$database UNION ALL
SELECT 7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N',NULL FROM rdb$database UNION ALL
SELECT 8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N',CAST('2020-11-13' AS timestamp) FROM rdb$database UNION ALL
SELECT 9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y',CAST('2020-11-13' AS timestamp) FROM rdb$database UNION ALL
SELECT 10,NULL,NULL,'Value1','Value2','Value2','Value2','N',NULL FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @BoolValue VarChar -- String
SET     @BoolValue = 'Y'
DECLARE @BoolValue_2 VarChar -- String
SET     @BoolValue_2 = 'Y'

SELECT
	"t1"."Enum"
FROM
	"ValueConversion" "t1"
		INNER JOIN (
			SELECT
				"t2"."BoolValue"
			FROM
				"ValueConversion" "t2"
		) "t2_1" ON "t2_1"."BoolValue" = @BoolValue AND "t1"."BoolValue" = @BoolValue_2

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "ValueConversion"

