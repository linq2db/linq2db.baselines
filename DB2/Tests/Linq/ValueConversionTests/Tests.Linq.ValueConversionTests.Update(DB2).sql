BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
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
			"AnotherBoolValue"        VarChar(1)    NOT NULL,
			"DateTimeNullable"        timestamp         NULL,

			CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
		)
	';
END

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
	"AnotherBoolValue",
	"DateTimeNullable"
)
VALUES
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y','F',NULL),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','F','2020-02-29-00.00.00.000000'),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','F','2020-02-29-00.00.00.000000'),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N','F',NULL),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','F','2020-02-29-00.00.00.000000'),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','F','2020-02-29-00.00.00.000000'),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N','F',NULL),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','F','2020-02-29-00.00.00.000000'),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','F','2020-02-29-00.00.00.000000'),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N','F',NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value2 VarChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- String
SET     @EnumWithNullDeclarative = NULL

UPDATE
	"ValueConversion" "e"
SET
	"Value1" = "e"."Value1",
	"Value2" = @Value2,
	"EnumWithNull" = @EnumWithNull,
	"EnumWithNullDeclarative" = @EnumWithNullDeclarative
WHERE
	"e"."Id" = 1

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
	"e"."BoolValue",
	"e"."AnotherBoolValue",
	"e"."DateTimeNullable"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 1
FETCH NEXT 1 ROWS ONLY

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
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

UPDATE
	"ValueConversion" "t1"
SET
	"Value1" = @Value1,
	"Value2" = @Value2,
	"Enum" = @Enum,
	"EnumNullable" = @EnumNullable,
	"EnumWithNull" = @EnumWithNull,
	"EnumWithNullDeclarative" = @EnumWithNullDeclarative,
	"BoolValue" = @BoolValue,
	"AnotherBoolValue" = @AnotherBoolValue,
	"DateTimeNullable" = @DateTimeNullable
WHERE
	"t1"."Id" = @Id

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
	"e"."BoolValue",
	"e"."AnotherBoolValue",
	"e"."DateTimeNullable"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 2
FETCH NEXT 1 ROWS ONLY

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
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3

UPDATE
	"ValueConversion" "t1"
SET
	"Value1" = @Value1,
	"Value2" = @Value2,
	"Enum" = @Enum,
	"EnumNullable" = @EnumNullable,
	"EnumWithNull" = @EnumWithNull,
	"EnumWithNullDeclarative" = @EnumWithNullDeclarative,
	"BoolValue" = @BoolValue,
	"AnotherBoolValue" = @AnotherBoolValue,
	"DateTimeNullable" = @DateTimeNullable
WHERE
	"t1"."Id" = @Id

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
	"e"."BoolValue",
	"e"."AnotherBoolValue",
	"e"."DateTimeNullable"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
END

