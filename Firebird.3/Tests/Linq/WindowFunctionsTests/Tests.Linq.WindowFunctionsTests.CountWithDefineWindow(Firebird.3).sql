-- Firebird.3 Firebird3

SELECT
	COUNT(*) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

