-- Firebird.5 Firebird4
DECLARE @flag Boolean
SET     @flag = TRUE

SELECT
	"t".ID
FROM
	"LinqDataTypes" "t"
WHERE
	@flag IN ("t"."BoolValue")

