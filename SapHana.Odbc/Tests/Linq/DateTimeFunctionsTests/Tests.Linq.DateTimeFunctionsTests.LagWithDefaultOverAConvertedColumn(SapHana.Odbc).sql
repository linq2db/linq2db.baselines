-- SapHana.Odbc SapHanaOdbc
DECLARE @fallback DateTime
SET     @fallback = TIMESTAMP '2026-05-25 09:00:00.0000000'

SELECT
	LAG("r"."Value", 1, ?) OVER (ORDER BY "r"."Id")
FROM
	"CoarseConvertedRow" "r"
ORDER BY
	"r"."Id"

