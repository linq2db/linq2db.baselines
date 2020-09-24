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
	"BoolValue"
)
VALUES
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y'),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N'),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N'),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N'),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y'),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N'),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N'),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N'),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y'),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Enum",
	"t1"."EnumNullable",
	"t1"."EnumWithNull",
	"t1"."EnumWithNullDeclarative",
	"t1"."BoolValue"
FROM
	"ValueConversion" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	"t"."Value1",
	"t"."Value2"
FROM
	"ValueConversion" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @skip_1 Integer(4) -- Int32
SET     @skip_1 = 2

SELECT
	"t1"."Value2"
FROM
	(
		SELECT
			"q"."Value2",
			ROW_NUMBER() OVER (ORDER BY "q"."Id") as RN
		FROM
			(
				SELECT
					"t"."Id",
					"t"."Value2"
				FROM
					"ValueConversion" "t"
			) "q"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @skip_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "ValueConversion"

