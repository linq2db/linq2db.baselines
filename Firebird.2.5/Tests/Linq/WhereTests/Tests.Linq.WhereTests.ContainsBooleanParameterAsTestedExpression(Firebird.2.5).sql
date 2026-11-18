-- Firebird.2.5 Firebird
DECLARE @flag Char -- String
SET     @flag = '1'

SELECT
	"t".ID
FROM
	"LinqDataTypes" "t"
WHERE
	@flag IN ("t"."BoolValue")

