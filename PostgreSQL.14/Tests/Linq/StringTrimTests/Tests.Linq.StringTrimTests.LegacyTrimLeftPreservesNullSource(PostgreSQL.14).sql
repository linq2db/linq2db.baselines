-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @CharColumn Char -- String
SET     @CharColumn = NULL
DECLARE @NCharColumn Char -- String
SET     @NCharColumn = NULL
DECLARE @VarCharColumn Varchar -- String
SET     @VarCharColumn = NULL
DECLARE @NVarCharColumn Varchar -- String
SET     @NVarCharColumn = NULL

INSERT INTO "StringTrimTable"
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	CASE
		WHEN t."VarCharColumn" IS NOT NULL THEN LTRIM(t."VarCharColumn", '.+')
		ELSE NULL
	END
FROM
	"StringTrimTable" t
WHERE
	t."Id" = 100

