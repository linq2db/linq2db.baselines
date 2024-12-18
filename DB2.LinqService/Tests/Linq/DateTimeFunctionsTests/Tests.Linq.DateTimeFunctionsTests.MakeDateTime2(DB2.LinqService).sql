BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Extract(year from CAST('2010-' || LPad("p".ID, 2, '0') || '-01 20:35:44.000' AS timestamp)) as "Year_1",
			CAST('2010-' || LPad("p".ID, 2, '0') || '-01 20:35:44.000' AS timestamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Year_1" = 2010 AND "t"."Year_1" IS NOT NULL

