-- Firebird.4 Firebird4
SELECT
	LEAD("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"ProcessNameRecord" "p"

-- Firebird.4 Firebird4
SELECT
	LAG("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"ProcessNameRecord" "p"

