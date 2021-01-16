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
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Issue1192Table" "t"
		WHERE
			"t"."Status" = 3 AND "t"."MyOtherId" = 12
	)
FROM
	"Issue1192Table" "t_1"
WHERE
	"t_1"."MyOtherId" = 12
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1192Table"

