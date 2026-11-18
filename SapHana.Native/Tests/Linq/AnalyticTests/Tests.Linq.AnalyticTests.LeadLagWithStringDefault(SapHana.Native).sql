-- SapHana.Native SapHana
SELECT
	LEAD("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

-- SapHana.Native SapHana
SELECT
	LAG("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

