-- Firebird.2.5 Firebird
SELECT FIRST 2
	CAST(Power(CAST("r".D AS DOUBLE PRECISION), CAST(0.00005 AS DOUBLE PRECISION)) AS Decimal(18, 4)) + "r".D
FROM
	"PowScale" "r"

