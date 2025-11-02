-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InstanceClass" "t"
WHERE
	CAST("t"."Id" AS NVarChar(11)) || CAST("t"."Value" AS NVarChar(11)) = CAST("t"."Id" AS NVarChar(11)) || "t"."Value"

