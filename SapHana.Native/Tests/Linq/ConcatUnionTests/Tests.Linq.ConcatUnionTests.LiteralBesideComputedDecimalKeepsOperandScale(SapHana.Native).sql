-- SapHana.Native SapHana
SELECT
	Abs("r"."Value")
FROM
	"FineDecimalRow" "r"
UNION ALL
SELECT
	CAST(1.000000000005 AS Decimal(18, 12))
FROM
	"FineDecimalRow" "r_1"

