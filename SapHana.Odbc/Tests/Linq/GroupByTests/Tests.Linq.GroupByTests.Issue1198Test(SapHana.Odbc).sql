BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1192Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1192Table"
(
	"IdId"      Integer NOT NULL,
	"MyOtherId" Integer NOT NULL,
	"Status"    Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(CASE
		WHEN "t"."Status" = 3 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1192Table" "t"
WHERE
	"t"."MyOtherId" = 12
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1192Table"

