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
DECLARE @Item1  -- Int32
SET     @Item1 = 5

SELECT
	"t1"."ID"
FROM
	"Issue1316Tests" "t1"
WHERE
	"t1"."ID" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1316Tests"

