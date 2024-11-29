BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "StringTypesTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "StringTypesTable"
(
	"Id"             Int           NOT NULL,
	"CharColumn"     Char(50)          NULL,
	"NCharColumn"    character(50)     NULL,
	"VarCharColumn"  VarChar(50)       NULL,
	"NVarCharColumn" VarChar(50)       NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @CharColumn Char(10) -- String
SET     @CharColumn = 'someString'
DECLARE @NCharColumn Char(10) -- String
SET     @NCharColumn = 'someString'
DECLARE @VarCharColumn Varchar(10) -- String
SET     @VarCharColumn = 'someString'
DECLARE @NVarCharColumn Varchar(10) -- String
SET     @NVarCharColumn = 'someString'

INSERT INTO "StringTypesTable"
(
	"Id",
	"CharColumn",
	"NCharColumn",
	"VarCharColumn",
	"NVarCharColumn"
)
VALUES
(
	:Id,
	:CharColumn,
	:NCharColumn,
	:VarCharColumn,
	:NVarCharColumn
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @str Char(5) -- String
SET     @str = 'some%'
DECLARE @str_1 Char(5) -- String
SET     @str_1 = 'some%'
DECLARE @str_2 Varchar(5) -- String
SET     @str_2 = 'some%'
DECLARE @str_3 Varchar(5) -- String
SET     @str_3 = 'some%'

SELECT
	t."Id",
	t."CharColumn",
	t."NCharColumn",
	t."VarCharColumn",
	t."NVarCharColumn"
FROM
	"StringTypesTable" t
WHERE
	t."CharColumn" LIKE :str ESCAPE '~' AND
	t."NCharColumn" LIKE :str_1 ESCAPE '~' AND
	t."VarCharColumn" LIKE :str_2 ESCAPE '~' AND
	t."NVarCharColumn" LIKE :str_3 ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "StringTypesTable"

