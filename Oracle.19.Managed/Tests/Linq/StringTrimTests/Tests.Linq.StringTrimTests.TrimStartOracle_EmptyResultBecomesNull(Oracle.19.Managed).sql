-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 100
DECLARE @CharColumn Char -- AnsiStringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn Char -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn Varchar2(3) -- String
SET     @VarCharColumn = 'aaa'
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

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."CharColumn",
	t."NCharColumn",
	t."VarCharColumn",
	t."NVarCharColumn"
FROM
	"StringTrimTable" t
WHERE
	t."Id" = 100 AND LTRIM(t."VarCharColumn", 'a') IS NULL

