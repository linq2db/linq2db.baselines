BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "ValueConversion"
(
	"Id"                      Int           NOT NULL,
	"Value1"                  VarChar2(200)     NULL,
	"Value2"                  VarChar2(200)     NULL,
	"Enum"                    VarChar2(50)  NOT NULL,
	"EnumNullable"            VarChar(50)       NULL,
	"EnumWithNull"            VarChar(50)       NULL,
	"EnumWithNullDeclarative" VarChar(50)       NULL,
	"BoolValue"               VarChar(1)    NOT NULL,
	"DateTimeNullable"        timestamp         NULL,

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y',NULL)
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N',TO_TIMESTAMP('2020-02-29 01:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'))
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N',TO_TIMESTAMP('2020-02-29 01:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'))
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N',NULL)
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y',TO_TIMESTAMP('2020-02-29 01:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'))
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N',TO_TIMESTAMP('2020-02-29 01:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'))
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N',NULL)
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N',TO_TIMESTAMP('2020-02-29 01:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'))
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y',TO_TIMESTAMP('2020-02-29 01:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'))
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "DateTimeNullable") VALUES (10,NULL,NULL,'Value1','Value2','Value2','Value2','N',NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value2 NVarchar2(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull Varchar2 -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative Varchar2 -- String
SET     @EnumWithNullDeclarative = NULL

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = "ValueConversion"."Value1",
	"ValueConversion"."Value2" = :Value2,
	"ValueConversion"."EnumWithNull" = :EnumWithNull,
	"ValueConversion"."EnumWithNullDeclarative" = :EnumWithNullDeclarative
WHERE
	"ValueConversion"."Id" = 1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	e."Id",
	e."Value1",
	e."Value2",
	e."Enum",
	e."EnumNullable",
	e."EnumWithNull",
	e."EnumWithNullDeclarative",
	e."BoolValue",
	e."DateTimeNullable"
FROM
	"ValueConversion" e
WHERE
	e."Id" = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value1 NVarchar2(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 NVarchar2(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable Varchar2 -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Varchar2(6) -- String
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative Varchar2(6) -- String
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue Varchar2 -- String
SET     @BoolValue = 'N'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = :Value1,
	"ValueConversion"."Value2" = :Value2,
	"ValueConversion"."Enum" = :Enum,
	"ValueConversion"."EnumNullable" = :EnumNullable,
	"ValueConversion"."EnumWithNull" = :EnumWithNull,
	"ValueConversion"."EnumWithNullDeclarative" = :EnumWithNullDeclarative,
	"ValueConversion"."BoolValue" = :BoolValue,
	"ValueConversion"."DateTimeNullable" = :DateTimeNullable
WHERE
	"ValueConversion"."Id" = :Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	e."Id",
	e."Value1",
	e."Value2",
	e."Enum",
	e."EnumNullable",
	e."EnumWithNull",
	e."EnumWithNullDeclarative",
	e."BoolValue",
	e."DateTimeNullable"
FROM
	"ValueConversion" e
WHERE
	e."Id" = 2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value1 NVarchar2 -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarchar2 -- String
SET     @Value2 = NULL
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable Varchar2 -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Varchar2 -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative Varchar2 -- String
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue Varchar2 -- String
SET     @BoolValue = 'N'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Int32
SET     @Id = 3

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = :Value1,
	"ValueConversion"."Value2" = :Value2,
	"ValueConversion"."Enum" = :Enum,
	"ValueConversion"."EnumNullable" = :EnumNullable,
	"ValueConversion"."EnumWithNull" = :EnumWithNull,
	"ValueConversion"."EnumWithNullDeclarative" = :EnumWithNullDeclarative,
	"ValueConversion"."BoolValue" = :BoolValue,
	"ValueConversion"."DateTimeNullable" = :DateTimeNullable
WHERE
	"ValueConversion"."Id" = :Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	e."Id",
	e."Value1",
	e."Value2",
	e."Enum",
	e."EnumNullable",
	e."EnumWithNull",
	e."EnumWithNullDeclarative",
	e."BoolValue",
	e."DateTimeNullable"
FROM
	"ValueConversion" e
WHERE
	e."Id" = 3 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "ValueConversion"

