BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "ValueConversion"
(
	"Id"                      Int           NOT NULL,
	"Value1"                  NVarChar(200)     NULL,
	"Value2"                  NVarChar(200)     NULL,
	"Enum"                    NVarChar(50)  NOT NULL,
	"EnumNullable"            VarChar(50)       NULL,
	"EnumWithNull"            VarChar(50)       NULL,
	"EnumWithNullDeclarative" VarChar(50)       NULL,
	"BoolValue"               VarChar(1)    NOT NULL,
	"DateTimeNullable"        timestamp         NULL,

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
VALUES
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y',NULL),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','2020-11-13-00.00.00.000000'),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','2020-11-13-00.00.00.000000'),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N',NULL),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','2020-11-13-00.00.00.000000'),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','2020-11-13-00.00.00.000000'),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N',NULL),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','2020-11-13-00.00.00.000000'),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','2020-11-13-00.00.00.000000'),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N',NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @testedList VarChar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	"t"."Id",
	"t"."Value1",
	"t"."Value2",
	"t"."Enum",
	"t"."EnumNullable",
	"t"."EnumWithNull",
	"t"."EnumWithNullDeclarative",
	"t"."BoolValue",
	"t"."DateTimeNullable"
FROM
	"ValueConversion" "t"
WHERE
	"t"."Value2" = @testedList

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "ValueConversion"

