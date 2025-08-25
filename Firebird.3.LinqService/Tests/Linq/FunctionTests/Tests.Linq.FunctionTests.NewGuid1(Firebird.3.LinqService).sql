BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" <> Gen_Uuid()

