BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StringTypesTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "StringTypesTable"
(
	"Id"             Int           NOT NULL,
	"CharColumn"     Char(50)          NULL,
	"NCharColumn"    character(50)     NULL,
	"VarCharColumn"  VarChar(50)       NULL,
	"NVarCharColumn" VarChar(50)       NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "StringTypesTable"
(
	"Id",
	"CharColumn",
	"NCharColumn",
	"VarCharColumn",
	"NVarCharColumn"
)
VALUES
(1,'someString','someString','someString','someString')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @str_4 Char(5) -- String
SET     @str_4 = 'some%'
DECLARE @str_5 Char(5) -- String
SET     @str_5 = 'some%'
DECLARE @str_6 Varchar(5) -- String
SET     @str_6 = 'some%'
DECLARE @str_7 Varchar(5) -- String
SET     @str_7 = 'some%'

SELECT
	t."Id",
	t."CharColumn",
	t."NCharColumn",
	t."VarCharColumn",
	t."NVarCharColumn"
FROM
	"StringTypesTable" t
WHERE
	t."CharColumn" LIKE :str_4 ESCAPE '~' AND
	t."NCharColumn" LIKE :str_5 ESCAPE '~' AND
	t."VarCharColumn" LIKE :str_6 ESCAPE '~' AND
	t."NVarCharColumn" LIKE :str_7 ESCAPE '~'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StringTypesTable"

