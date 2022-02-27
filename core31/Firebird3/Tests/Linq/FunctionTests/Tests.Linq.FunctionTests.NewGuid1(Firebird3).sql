BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" <> Gen_Uuid()

