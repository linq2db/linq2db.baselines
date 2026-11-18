-- SapHana.Native SapHana
SELECT
	Lower(CAST("t"."Id" AS NVarChar(36)))
FROM
	"TableWithGuid" "t"

-- SapHana.Native SapHana
SELECT
	"t"."Id"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST("t"."Id" AS NVarChar(36))) = 'x'

