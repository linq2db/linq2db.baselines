BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CAST('2010-' || LPad("p".ID, 2, '0') || '-01 20:35:44.000' AS timestamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Extract(year from "t"."c1") = 2010

