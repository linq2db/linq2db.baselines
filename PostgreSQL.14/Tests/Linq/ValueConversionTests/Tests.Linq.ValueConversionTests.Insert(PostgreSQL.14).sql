-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Varchar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum Varchar(6) -- String
SET     @Enum = 'Value1'
DECLARE @Value2 Varchar(22) -- String
SET     @Value2 = '[{"Value":"inserted"}]'
DECLARE @BoolValue Varchar -- String
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue Varchar -- String
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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
LIMIT 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 Varchar -- String
SET     @Value1 = NULL
DECLARE @Value2 Varchar -- String
SET     @Value2 = NULL
DECLARE @Enum Varchar(6) -- String
SET     @Enum = 'Value2'
DECLARE @BoolValue Varchar -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue Varchar -- String
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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
LIMIT 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 Varchar(21) -- String
SET     @Value1 = '{"some":"inserted3}"}'
DECLARE @Value2 Varchar(23) -- String
SET     @Value2 = '[{"Value":"inserted3"}]'
DECLARE @Enum Varchar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable Varchar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Varchar(6) -- String
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative Varchar(6) -- String
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue Varchar -- String
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue Varchar -- String
SET     @AnotherBoolValue = 'T'
DECLARE @DateTimeNullable Timestamp -- DateTime2
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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
LIMIT 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"ValueConversion" t1

