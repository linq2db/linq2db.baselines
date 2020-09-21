BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Text(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum Text(6) -- String
SET     @Enum = 'Value1'
DECLARE @Value2 Text(22) -- String
SET     @Value2 = '[{"Value":"inserted"}]'
DECLARE @BoolValue Text -- AnsiString
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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
	e."BoolValue"
FROM
	"ValueConversion" e
WHERE
	e."Id" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 Text -- String
SET     @Value1 = NULL
DECLARE @Value2 Text -- String
SET     @Value2 = NULL
DECLARE @Enum Text(6) -- String
SET     @Enum = 'Value2'
DECLARE @BoolValue Text -- AnsiString
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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
	e."BoolValue"
FROM
	"ValueConversion" e
WHERE
	e."Id" = 2
LIMIT :take

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 Text(21) -- String
SET     @Value1 = '{"some":"inserted3}"}'
DECLARE @Value2 Text(23) -- String
SET     @Value2 = '[{"Value":"inserted3"}]'
DECLARE @Enum Text(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable Text -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Text(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative Text(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue Text -- AnsiString
SET     @BoolValue = 'Y'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
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
	:BoolValue
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
	e."BoolValue"
FROM
	"ValueConversion" e
WHERE
	e."Id" = 3
LIMIT :take

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"ValueConversion" t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "ValueConversion"

