BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1316Tests"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1316Tests"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."ID"
FROM
	"Issue1316Tests" "_"
WHERE
	"_"."ID" IN (4, 5, 6)
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1316Tests"

