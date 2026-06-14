-- Firebird.3 Firebird3

SELECT
	SUM(CASE
		WHEN "t"."CategoryId" = 1 THEN "t"."IntValue"
		ELSE NULL
	END) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

