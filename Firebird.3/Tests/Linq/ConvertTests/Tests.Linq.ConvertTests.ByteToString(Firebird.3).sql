BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Cast(Cast("t".ID as SmallInt) as VarChar(3) CHARACTER SET UNICODE_FSS) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	Char_Length("p"."c1") > 0

