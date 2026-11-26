-- SapHana.Odbc SapHanaOdbc
SELECT
	"e"."Value1" || ',' || Coalesce("e"."Name", '') || ',' || "e"."Id"
FROM
	"JoinProbeEntity" "e"

