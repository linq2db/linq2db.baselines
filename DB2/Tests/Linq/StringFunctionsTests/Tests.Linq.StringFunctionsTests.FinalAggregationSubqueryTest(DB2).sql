BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			COUNT(DISTINCT "t1"."Value1")
		FROM
			"SampleClass" "t1"
	),
	(
		SELECT
			LISTAGG("t2"."Value1", ' -> ')
		FROM
			"SampleClass" "t2"
	)
FROM
	"SampleClass" "t"

