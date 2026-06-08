-- Firebird.2.5 Firebird

SELECT
	"t".ID,
	"t"."IntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	Bin_And("t"."IntValue", 1) <> 0

