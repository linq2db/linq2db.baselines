-- Firebird.4 Firebird4

SELECT
	COUNT("t"."NullableIntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

