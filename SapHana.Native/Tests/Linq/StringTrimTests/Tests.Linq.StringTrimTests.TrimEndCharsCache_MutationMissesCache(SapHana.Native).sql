-- SapHana.Native SapHana
SELECT
	RTRIM("t"."VarCharColumn", '.+')
FROM
	"StringTrimTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	RTRIM("t"."VarCharColumn", 'ab')
FROM
	"StringTrimTable" "t"
ORDER BY
	"t"."Id"

