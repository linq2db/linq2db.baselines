﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1403Tests_3"
(
	"event_description" NVarChar(255) NOT NULL,
	"event_id"          Integer       NOT NULL,

	PRIMARY KEY ("event_id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue1403Tests_3"
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

SELECT
	"t1"."event_description",
	"t1"."event_id"
FROM
	"Issue1403Tests_3" "t1"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1403Tests_3"

