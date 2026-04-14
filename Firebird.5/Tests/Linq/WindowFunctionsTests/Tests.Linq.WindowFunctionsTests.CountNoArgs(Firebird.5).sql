-- Firebird.5 Firebird4

SELECT
	COUNT(*) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id"),
	COUNT(*) OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

