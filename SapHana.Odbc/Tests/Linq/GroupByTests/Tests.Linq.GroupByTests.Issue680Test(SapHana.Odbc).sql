BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue680Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue680Table"
(
	"TimeStamp" Timestamp NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTime  -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	COUNT(CASE
		WHEN "g_1"."TimeStamp" > ? THEN 1
		ELSE NULL
	END)
FROM
	"Issue680Table" "g_1"
GROUP BY
	"g_1"."TimeStamp"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue680Table"

