BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CAST('2010-' || LPad(CAST("p".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01 20:35:44.000' AS TimeStamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Extract(year from "t"."c1") = 2010

