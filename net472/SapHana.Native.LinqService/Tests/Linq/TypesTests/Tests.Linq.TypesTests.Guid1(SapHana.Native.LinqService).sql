BeforeExecute
-- SapHana.Native SapHana
DECLARE @GuidValue_1 Char(36) -- AnsiStringFixedLength
SET     @GuidValue_1 = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = :"GuidValue_1"

