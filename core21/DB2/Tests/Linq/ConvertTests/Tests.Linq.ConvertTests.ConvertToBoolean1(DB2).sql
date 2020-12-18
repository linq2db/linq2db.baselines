BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "t"."MoneyValue" <> 0
			THEN 1
		ELSE 0
	END
FROM
	"LinqDataTypes" "t"
WHERE
	CASE
		WHEN "t"."MoneyValue" <> 0
			THEN 1
		ELSE 0
	END = 1

