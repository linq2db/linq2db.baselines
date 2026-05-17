-- Oracle.18.Managed Oracle.Managed Oracle12
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
DECLARE @AnotherBoolValue Varchar2 -- String
SET     @AnotherBoolValue = 'T'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Enum",
	"Value2",
	"BoolValue",
	"AnotherBoolValue"
)
VALUES
(
	:Id,
	:Value1,
	:Enum,
	:Value2,
	:BoolValue,
	:AnotherBoolValue
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."Value1",
	e."Value2",
	e."Enum",
	e."EnumNullable",
	e."EnumWithNull",
	e."EnumWithNullDeclarative",
	e."BoolValue",
	e."AnotherBoolValue",
	e."DateTimeNullable"
FROM
	"ValueConversion" e
WHERE
	e."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
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
DECLARE @AnotherBoolValue Varchar2 -- String
SET     @AnotherBoolValue = 'F'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"BoolValue",
	"AnotherBoolValue"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Enum,
	:BoolValue,
	:AnotherBoolValue
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."Value1",
	e."Value2",
	e."Enum",
	e."EnumNullable",
	e."EnumWithNull",
	e."EnumWithNullDeclarative",
	e."BoolValue",
	e."AnotherBoolValue",
	e."DateTimeNullable"
FROM
	"ValueConversion" e
WHERE
	e."Id" = 2
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
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
DECLARE @AnotherBoolValue Varchar2 -- String
SET     @AnotherBoolValue = 'T'
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
	"AnotherBoolValue",
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
	:AnotherBoolValue,
	:DateTimeNullable
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."Value1",
	e."Value2",
	e."Enum",
	e."EnumNullable",
	e."EnumWithNull",
	e."EnumWithNullDeclarative",
	e."BoolValue",
	e."AnotherBoolValue",
	e."DateTimeNullable"
FROM
	"ValueConversion" e
WHERE
	e."Id" = 3
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"ValueConversion" t1

