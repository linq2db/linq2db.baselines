-- SapHana.Odbc SapHanaOdbc
DECLARE @low Time
SET     @low = 01:30:00
DECLARE @high Time
SET     @high = 03:00:00

SELECT
	"r"."Id"
FROM
	"BetweenTimeRow" "r"
WHERE
	"r"."Value" BETWEEN ? AND ?
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @low Time
SET     @low = 01:30:00
DECLARE @high Time
SET     @high = 03:00:00

SELECT
	"r"."Id"
FROM
	"BetweenTimeRow" "r"
WHERE
	"r"."Value" NOT BETWEEN ? AND ?
ORDER BY
	"r"."Id"

