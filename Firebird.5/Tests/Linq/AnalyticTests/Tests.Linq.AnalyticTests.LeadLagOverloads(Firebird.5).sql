-- Firebird.5 Firebird4

SELECT
	LEAD("p"."ProcessName", 2) OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

-- Firebird.5 Firebird4

SELECT
	LEAD("p"."ProcessName") OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

-- Firebird.5 Firebird4

SELECT
	LAG("p"."ProcessName", 2) OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

-- Firebird.5 Firebird4

SELECT
	LAG("p"."ProcessName") OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

