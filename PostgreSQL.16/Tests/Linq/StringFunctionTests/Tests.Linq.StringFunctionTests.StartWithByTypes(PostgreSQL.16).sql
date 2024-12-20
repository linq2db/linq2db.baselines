﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "StringTypesTable"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "StringTypesTable"
(
	"Id"             Int           NOT NULL,
	"CharColumn"     Char(50)          NULL,
	"NCharColumn"    character(50)     NULL,
	"VarCharColumn"  VarChar(50)       NULL,
	"NVarCharColumn" VarChar(50)       NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "StringTypesTable"

