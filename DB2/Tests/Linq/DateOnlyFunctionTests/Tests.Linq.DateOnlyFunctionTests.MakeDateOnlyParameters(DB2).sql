BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @year Integer(4) -- Int32
SET     @year = 2010

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Extract(year from CAST(LPad(@year, 4, '0') || '-' || LPad("p".ID, 2, '0') || '-01' AS Date)) as "Year_1",
			CAST(LPad(@year, 4, '0') || '-' || LPad("p".ID, 2, '0') || '-01' AS Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Year_1" = 2010 AND "t"."Year_1" IS NOT NULL

