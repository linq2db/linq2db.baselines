BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" <> Gen_Uuid()

