-- Firebird.5 Firebird4

SELECT
	"t".ID,
	"t"."IntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	Bin_And("t"."IntValue", 1) <> 0

