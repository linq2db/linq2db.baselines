-- SapHana.Native SapHana
SELECT
	LEAD("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"ProcessNameRecord" "p"

-- SapHana.Native SapHana
SELECT
	LAG("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"ProcessNameRecord" "p"

