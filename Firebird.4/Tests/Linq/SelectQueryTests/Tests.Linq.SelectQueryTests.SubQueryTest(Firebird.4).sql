BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t_1"."Id",
	"t_1"."Value",
	"t2"."Value1",
	"t2"."Value2"
FROM
	"SampleClass" "t_1"
		LEFT JOIN (
			SELECT
				"t1"."Value1",
				"t1"."Value2"
			FROM
				(
					SELECT
						DateAdd(Day, "t"."Value", LOCALTIMESTAMP) as "Value1",
						DateAdd(Day, 2, LOCALTIMESTAMP) as "Value2"
					FROM
						"SampleClass" "t"
					WHERE
						"t"."Value" = 1
					UNION
					SELECT
						DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
						DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
					FROM rdb$database
				) "t1"
			FETCH NEXT 1 ROWS ONLY
		) "t2" ON 1=1

