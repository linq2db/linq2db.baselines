BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InstanceClass" "t"
WHERE
	CAST("t"."Id" AS NVarChar(5000)) || CAST("t"."Value" AS NVarChar(5000)) = CAST("t"."Id" AS NVarChar(5000)) || "t"."Value"

