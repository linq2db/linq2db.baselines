-- Firebird.2.5 Firebird
SELECT FIRST 2
	CAST("r".A + "r".B AS Decimal(18, 10))
FROM
	"DecimalTable" "r"

