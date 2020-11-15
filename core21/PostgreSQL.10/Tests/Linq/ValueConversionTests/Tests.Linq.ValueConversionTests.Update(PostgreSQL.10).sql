BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "ValueConversion"
(
	"Id"                      Int          NOT NULL,
	"Value1"                  VarChar(200)     NULL,
	"Value2"                  VarChar(200)     NULL,
	"Enum"                    VarChar(50)  NOT NULL,
	"EnumNullable"            VarChar(50)      NULL,
	"EnumWithNull"            VarChar(50)      NULL,
	"EnumWithNullDeclarative" VarChar(50)      NULL,
	"BoolValue"               VarChar(1)   NOT NULL,
	"DateTimeNullable"        TimeStamp        NULL,

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y',NULL),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','2020-02-29'::date),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','2020-02-29'::date),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N',NULL),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','2020-02-29'::date),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','2020-02-29'::date),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N',NULL),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','2020-02-29'::date),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','2020-02-29'::date),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N',NULL)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value2 Text(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull Text -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative Text -- AnsiString
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
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
	e."Id" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value1 Text(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 Text(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum Text(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable Text -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Text(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative Text(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue Text -- AnsiString
SET     @BoolValue = 'N'
DECLARE @DateTimeNullable Timestamp -- DateTime
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
	"DateTimeNullable" = :DateTimeNullable
WHERE
	"ValueConversion"."Id" = :Id

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
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
	e."Id" = 2
LIMIT :take

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value1 Text -- String
SET     @Value1 = NULL
DECLARE @Value2 Text -- String
SET     @Value2 = NULL
DECLARE @Enum Text(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable Text -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Text -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative Text -- AnsiString
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue Text -- AnsiString
SET     @BoolValue = 'N'
DECLARE @DateTimeNullable Timestamp -- DateTime
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
	"DateTimeNullable" = :DateTimeNullable
WHERE
	"ValueConversion"."Id" = :Id

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
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
	e."Id" = 3
LIMIT :take

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "ValueConversion"

