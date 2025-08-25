BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT DISTINCT
	"r".F1,
	"r".F2
FROM
	"DistinctOrderByTable" "r"
ORDER BY
	"r".F1 DESC,
	"r".F2

