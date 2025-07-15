BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @iteration Integer -- Int32
SET     @iteration = 1
DECLARE @Value1 Text(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum Varchar(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted Varchar(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue Varchar -- String
SET     @boolValue = 'N'
DECLARE @boolValue_1 Varchar -- String
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @iteration Integer -- Int32
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
LIMIT 2

