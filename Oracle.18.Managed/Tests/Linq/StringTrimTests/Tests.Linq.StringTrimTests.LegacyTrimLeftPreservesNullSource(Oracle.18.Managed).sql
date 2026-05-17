-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 100
DECLARE @CharColumn Char -- AnsiStringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn Char -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn Varchar2 -- String
SET     @VarCharColumn = NULL
DECLARE @NVarCharColumn NVarchar2 -- String
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

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t."VarCharColumn" IS NOT NULL THEN LTRIM(t."VarCharColumn", '.+')
		ELSE NULL
	END
FROM
	"StringTrimTable" t
WHERE
	t."Id" = 100

