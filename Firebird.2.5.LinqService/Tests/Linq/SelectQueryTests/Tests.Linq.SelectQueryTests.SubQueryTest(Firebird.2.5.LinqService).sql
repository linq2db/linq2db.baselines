BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t"."Id",
	"t"."Value",
	(
		SELECT FIRST 1
			"t1"."Value1"
		FROM
			(
				SELECT
					DateAdd(Day, "t_1"."Value", LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 2, LOCALTIMESTAMP) as "Value2"
				FROM
					"SampleClass" "t_1"
				WHERE
					"t_1"."Value" = 1
				UNION
				SELECT
					DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
				FROM rdb$database
			) "t1"
	),
	(
		SELECT FIRST 1
			"t2"."Value2"
		FROM
			(
				SELECT
					DateAdd(Day, "t_2"."Value", LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 2, LOCALTIMESTAMP) as "Value2"
				FROM
					"SampleClass" "t_2"
				WHERE
					"t_2"."Value" = 1
				UNION
				SELECT
					DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
				FROM rdb$database
			) "t2"
	)
FROM
	"SampleClass" "t"

