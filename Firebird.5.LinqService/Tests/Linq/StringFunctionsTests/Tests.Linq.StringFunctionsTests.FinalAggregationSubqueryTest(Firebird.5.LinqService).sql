BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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

