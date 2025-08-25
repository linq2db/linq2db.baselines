BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" <> Gen_Uuid()

