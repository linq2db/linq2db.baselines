-- Firebird.4 Firebird4
SELECT
	CAST("r".A + "r".B AS Decimal(18, 10))
FROM
	"DecimalTable" "r"
FETCH NEXT 2 ROWS ONLY

