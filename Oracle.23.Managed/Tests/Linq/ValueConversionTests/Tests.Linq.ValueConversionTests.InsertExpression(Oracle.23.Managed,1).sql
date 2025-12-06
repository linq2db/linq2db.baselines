-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @iteration Int32
SET     @iteration = 1
DECLARE @Value1 Varchar2(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted NVarchar2(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue Varchar2 -- String
SET     @boolValue = 'N'
DECLARE @boolValue_1 Varchar2 -- String
SET     @boolValue_1 = 'F'

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
	:iteration,
	:Value1,
	:Enum,
	:inserted,
	:boolValue,
	:boolValue_1
)

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @iteration Int32
SET     @iteration = 1

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
	e."Id" = :iteration
FETCH NEXT 2 ROWS ONLY

