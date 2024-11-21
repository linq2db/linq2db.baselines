BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @year Integer(4) -- Int32
SET     @year = 2010

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CAST(LPad(@year, 4, '0') || '-' || LPad("p".ID, 2, '0') || '-01' AS timestamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Extract(year from "t"."c1") = 2010

