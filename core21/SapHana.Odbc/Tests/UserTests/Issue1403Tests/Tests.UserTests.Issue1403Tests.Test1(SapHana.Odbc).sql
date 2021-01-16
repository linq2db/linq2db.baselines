BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1403Tests_1"
(
	"event_id"          Integer       NOT NULL,
	"event_description" NVarChar(255) NOT NULL,

	PRIMARY KEY ("event_id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue1403Tests_1"
(
	"event_id",
	"event_description"
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1403Tests_1"

