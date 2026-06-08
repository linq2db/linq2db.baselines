-- Firebird.3 Firebird3

SELECT
	"t".ID,
	"t"."IntValue"
FROM
	"TestTable5" "t"
WHERE
	Bin_And("t"."IntValue", 1) <> 0

