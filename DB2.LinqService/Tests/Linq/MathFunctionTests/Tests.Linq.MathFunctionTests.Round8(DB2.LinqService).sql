BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	CASE
		WHEN CAST("t"."MoneyValue" AS Float) - FLOOR(CAST("t"."MoneyValue" AS Float)) = 0.5 AND Mod(Int(FLOOR(CAST("t"."MoneyValue" AS Float))), 2) = 0
			THEN FLOOR(CAST("t"."MoneyValue" AS Float))
		ELSE ROUND(CAST("t"."MoneyValue" AS Float), 0)
	END <> 0

