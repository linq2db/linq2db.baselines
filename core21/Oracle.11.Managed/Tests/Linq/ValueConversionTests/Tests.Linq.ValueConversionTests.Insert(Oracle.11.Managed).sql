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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value1 NVarchar2(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value1'
DECLARE @Value2 NVarchar2(22) -- String
SET     @Value2 = '[{"Value":"inserted"}]'
DECLARE @BoolValue Varchar2 -- String
SET     @BoolValue = 'Y'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Enum",
	"Value2",
	"BoolValue"
)
VALUES
(
	:Id,
	:Value1,
	:Enum,
	:Value2,
	:BoolValue
)

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
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value1 NVarchar2 -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarchar2 -- String
SET     @Value2 = NULL
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value2'
DECLARE @BoolValue Varchar2 -- String
SET     @BoolValue = 'N'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"BoolValue"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Enum,
	:BoolValue
)

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
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value1 NVarchar2(21) -- String
SET     @Value1 = '{"some":"inserted3}"}'
DECLARE @Value2 NVarchar2(23) -- String
SET     @Value2 = '[{"Value":"inserted3"}]'
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable Varchar2 -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Varchar2(6) -- String
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative Varchar2(6) -- String
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue Varchar2 -- String
SET     @BoolValue = 'Y'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL

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
(
	:Id,
	:Value1,
	:Value2,
	:Enum,
	:EnumNullable,
	:EnumWithNull,
	:EnumWithNullDeclarative,
	:BoolValue,
	:DateTimeNullable
)

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

SELECT
	Count(*)
FROM
	"ValueConversion" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "ValueConversion"

