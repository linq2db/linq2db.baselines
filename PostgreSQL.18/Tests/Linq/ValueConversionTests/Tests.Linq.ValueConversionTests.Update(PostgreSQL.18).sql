BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Value2 Varchar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull Varchar -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative Varchar -- String
SET     @EnumWithNullDeclarative = NULL

UPDATE
	"ValueConversion"
SET
	"Value1" = "ValueConversion"."Value1",
	"Value2" = :Value2,
	"EnumWithNull" = :EnumWithNull,
	"EnumWithNullDeclarative" = :EnumWithNullDeclarative
WHERE
	"ValueConversion"."Id" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

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

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Value1 Varchar(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 Varchar(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum Varchar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable Varchar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Varchar(6) -- String
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative Varchar(6) -- String
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue Varchar -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue Varchar -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp -- DateTime2
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"ValueConversion"
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
	"ValueConversion"."Id" = :Id

BeforeExecute
-- PostgreSQL.18 PostgreSQL

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

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Value1 Varchar -- String
SET     @Value1 = NULL
DECLARE @Value2 Varchar -- String
SET     @Value2 = NULL
DECLARE @Enum Varchar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable Varchar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Varchar -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative Varchar -- String
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue Varchar -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue Varchar -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp -- DateTime2
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 3

UPDATE
	"ValueConversion"
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
	"ValueConversion"."Id" = :Id

BeforeExecute
-- PostgreSQL.18 PostgreSQL

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

