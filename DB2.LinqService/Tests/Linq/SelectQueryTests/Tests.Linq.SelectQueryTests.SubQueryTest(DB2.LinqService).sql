BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
						CURRENT_TIMESTAMP + "t"."Value" DAY as "Value1",
						CURRENT_TIMESTAMP + 2 DAY as "Value2"
					FROM
						"SampleClass" "t"
					WHERE
						"t"."Value" = 1
					UNION
					SELECT
						CURRENT_TIMESTAMP + 3 DAY as "Value1",
						CURRENT_TIMESTAMP + 4 DAY as "Value2"
					FROM SYSIBM.SYSDUMMY1
				) "t1"
			FETCH NEXT 1 ROWS ONLY
		) "t2" ON 1=1

