-- Firebird.5 Firebird4
SELECT
	Power(1.00005, "r".E) + "r".D
FROM
	"PowBaseScale" "r"
FETCH NEXT 2 ROWS ONLY

