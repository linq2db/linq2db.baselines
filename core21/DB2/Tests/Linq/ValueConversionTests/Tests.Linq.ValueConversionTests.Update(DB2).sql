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
DECLARE @Value2 VarChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- String
SET     @EnumWithNull = NULL

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = "ValueConversion"."Value1",
	"ValueConversion"."Value2" = @Value2,
	"ValueConversion"."EnumWithNull" = @EnumWithNull,
	"ValueConversion"."EnumWithNullDeclarative" = @EnumWithNull
WHERE
	"ValueConversion"."Id" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
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
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'N'
DECLARE @Id Integer(4) -- Int32
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
	"ValueConversion"."BoolValue" = @BoolValue
WHERE
	"ValueConversion"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 2
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
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
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'N'
DECLARE @Id Integer(4) -- Int32
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
	"ValueConversion"."BoolValue" = @BoolValue
WHERE
	"ValueConversion"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 3
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "ValueConversion"

