BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value2 NVarchar2(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull Varchar2 -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative Varchar2 -- String
SET     @EnumWithNullDeclarative = NULL

UPDATE
	"ValueConversion" e
SET
	"Value1" = e."Value1",
	"Value2" = :Value2,
	"EnumWithNull" = :EnumWithNull,
	"EnumWithNullDeclarative" = :EnumWithNullDeclarative
WHERE
	e."Id" = 1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
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
DECLARE @AnotherBoolValue Varchar2 -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	"ValueConversion" t1
SET
	"Value1" = :Value1,
	"Value2" = :Value2,
	"Enum" = :Enum,
	"EnumNullable" = :EnumNullable,
	"EnumWithNull" = :EnumWithNull,
	"EnumWithNullDeclarative" = :EnumWithNullDeclarative,
	"BoolValue" = :BoolValue,
	"AnotherBoolValue" = :AnotherBoolValue,
	"DateTimeNullable" = :DateTimeNullable
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
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
DECLARE @AnotherBoolValue Varchar2 -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Int32
SET     @Id = 3

UPDATE
	"ValueConversion" t1
SET
	"Value1" = :Value1,
	"Value2" = :Value2,
	"Enum" = :Enum,
	"EnumNullable" = :EnumNullable,
	"EnumWithNull" = :EnumWithNull,
	"EnumWithNullDeclarative" = :EnumWithNullDeclarative,
	"BoolValue" = :BoolValue,
	"AnotherBoolValue" = :AnotherBoolValue,
	"DateTimeNullable" = :DateTimeNullable
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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

