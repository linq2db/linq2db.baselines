BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StringTypesTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "StringTypesTable"
(
	"Id"             Int           NOT NULL,
	"CharColumn"     Char(50)          NULL,
	"NCharColumn"    character(50)     NULL,
	"VarCharColumn"  VarChar(50)       NULL,
	"NVarCharColumn" VarChar(50)       NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @str Text(5) -- String
SET     @str = 'some%'
DECLARE @str_1 Text(5) -- String
SET     @str_1 = 'some%'
DECLARE @str_2 Text(5) -- String
SET     @str_2 = 'some%'
DECLARE @str_3 Text(5) -- String
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StringTypesTable"

