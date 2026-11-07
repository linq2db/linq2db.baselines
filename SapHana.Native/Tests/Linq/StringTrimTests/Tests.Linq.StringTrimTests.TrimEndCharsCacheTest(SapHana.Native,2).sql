-- SapHana.Native SapHana
SELECT
	RTRIM("t"."VarCharColumn", 'ab')
FROM
	"StringTrimTable" "t"
ORDER BY
	"t"."Id"

