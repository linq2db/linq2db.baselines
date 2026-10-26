-- SapHana.Native SapHana
SELECT
	"t"."Id",
	RANK() OVER (ORDER BY (
		SELECT
			1
		FROM DUMMY
	))
FROM
	"WindowFunctionTestEntity" "t"

