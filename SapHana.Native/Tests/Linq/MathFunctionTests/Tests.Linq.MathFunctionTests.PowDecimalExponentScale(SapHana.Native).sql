-- SapHana.Native SapHana
SELECT
	CAST(Power(CAST("r"."D" AS Double), CAST(0.00005 AS Double)) AS Decimal(18, 4)) + "r"."D"
FROM
	"PowScale" "r"
LIMIT 2

