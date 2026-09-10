-- Firebird.4 Firebird4
SELECT
	"t"."Id",
	"t"."CategoryId",
	SUM("t"."IntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY (
		SELECT
			1
		FROM rdb$database
	) RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING)
FROM
	"WindowFunctionTestEntity" "t"

