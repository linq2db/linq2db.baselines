-- Oracle.11.Managed Oracle11
DECLARE @iteration Int32
SET     @iteration = 2
DECLARE @Value1 Varchar2(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted NVarchar2(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue Varchar2 -- String
SET     @boolValue = 'Y'
DECLARE @boolValue_1 Varchar2 -- String
SET     @boolValue_1 = 'T'

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

-- Oracle.11.Managed Oracle11
DECLARE @iteration Int32
SET     @iteration = 2

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
	e."Id" = :iteration AND ROWNUM <= 2

