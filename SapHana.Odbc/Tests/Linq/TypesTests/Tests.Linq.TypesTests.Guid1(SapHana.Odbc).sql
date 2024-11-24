BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p Char(36) -- AnsiStringFixedLength
SET     @p = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = ?

