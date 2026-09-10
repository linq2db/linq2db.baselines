-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @name Int32
SET     @name = 4

SELECT
	t."Id",
	t."Value",
	t."Money"
FROM
	"ParameterCastUnderCastTable" t
WHERE
	t."Value" = CAST(:name AS VarChar(255))

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @name Int32
SET     @name = 4

SELECT
	t."Id",
	t."Value",
	t."Money"
FROM
	"ParameterCastUnderCastTable" t
WHERE
	t."Money" = CAST(:name AS Decimal(28, 10))

