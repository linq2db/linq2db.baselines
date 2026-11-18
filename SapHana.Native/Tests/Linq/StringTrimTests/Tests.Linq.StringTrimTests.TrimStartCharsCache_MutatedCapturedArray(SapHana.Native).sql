-- SapHana.Native SapHana
SELECT
	LTRIM("t"."VarCharColumn", '.+')
FROM
	"StringTrimTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	LTRIM("t"."VarCharColumn", 'ab')
FROM
	"StringTrimTable" "t"
ORDER BY
	"t"."Id"

