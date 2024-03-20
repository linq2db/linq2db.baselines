BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ValueConversion"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ValueConversion"
(
	"Id"                      Int          NOT NULL,
	"Value1"                  VarChar(200)     NULL,
	"Value2"                  VarChar(200)     NULL,
	"Enum"                    VarChar(50)  NOT NULL,
	"EnumNullable"            VarChar(50)      NULL,
	"EnumWithNull"            VarChar(50)      NULL,
	"EnumWithNullDeclarative" VarChar(50)      NULL,
	"BoolValue"               VarChar(1)   NOT NULL,
	"AnotherBoolValue"        VarChar(1)   NOT NULL,
	"DateTimeNullable"        TimeStamp        NULL,

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','F','2020-02-29'::date),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','F','2020-02-29'::date),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N','F',NULL),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','F','2020-02-29'::date),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','F','2020-02-29'::date),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N','F',NULL),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','F','2020-02-29'::date),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','F','2020-02-29'::date),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N','F',NULL)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ValueConversion"

