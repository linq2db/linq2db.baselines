-- Firebird.3 Firebird3
SELECT
	LEAD("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"ProcessNameRecord" "p"

-- Firebird.3 Firebird3
SELECT
	LAG("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"ProcessNameRecord" "p"

