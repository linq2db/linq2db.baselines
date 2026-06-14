-- Firebird.5 Firebird4

SELECT
	COUNT(CASE
		WHEN "t"."IntValue" > 20 THEN 1
		ELSE NULL
	END) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

