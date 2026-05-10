-- Firebird.3 Firebird3

SELECT
	DateAdd(Day, "t"."Value", CURRENT_TIMESTAMP),
	DateAdd(Day, 2, CURRENT_TIMESTAMP)
FROM
	"SampleClass" "t"
WHERE
	"t"."Value" = 1
UNION
SELECT
	DateAdd(Day, 3, CURRENT_TIMESTAMP),
	DateAdd(Day, 4, CURRENT_TIMESTAMP)
FROM rdb$database

-- Firebird.3 Firebird3

SELECT
	"v_1"."Value2"
FROM
	(
		SELECT
			DateAdd(Day, "v"."Value", CURRENT_TIMESTAMP) as "Value1",
			DateAdd(Day, 2, CURRENT_TIMESTAMP) as "Value2"
		FROM
			"SampleClass" "v"
		WHERE
			"v"."Value" = 1
		UNION
		SELECT
			DateAdd(Day, 3, CURRENT_TIMESTAMP) as "Value1",
			DateAdd(Day, 4, CURRENT_TIMESTAMP) as "Value2"
		FROM rdb$database
	) "v_1"

