BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	(CASE
		WHEN "t"."BoolValue" = 0 THEN 1
		ELSE 0
	END = 0 AND CASE
		WHEN "t"."BoolValue" = 0 THEN 1
		ELSE 0
	END IS NOT NULL)

