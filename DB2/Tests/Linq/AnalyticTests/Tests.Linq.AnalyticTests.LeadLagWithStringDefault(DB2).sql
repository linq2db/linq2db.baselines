-- DB2 DB2.LUW DB2LUW

SELECT
	LEAD("p"."ProcessName", 1, 'None') OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

-- DB2 DB2.LUW DB2LUW

SELECT
	LAG("p"."ProcessName", 1, 'None') OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

