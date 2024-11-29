BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CAST('2010-' || LPad(CAST("p".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Extract(year from "t"."c1") = 2010

