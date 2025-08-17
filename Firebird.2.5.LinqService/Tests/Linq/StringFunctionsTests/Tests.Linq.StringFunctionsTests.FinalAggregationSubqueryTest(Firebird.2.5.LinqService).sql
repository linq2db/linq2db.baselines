BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	(
		SELECT
			COUNT(DISTINCT "t1"."Value1")
		FROM
			"SampleClass" "t1"
	),
	(
		SELECT
			LIST("t2"."Value1", ' -> ')
		FROM
			"SampleClass" "t2"
	)
FROM
	"SampleClass" "t"

