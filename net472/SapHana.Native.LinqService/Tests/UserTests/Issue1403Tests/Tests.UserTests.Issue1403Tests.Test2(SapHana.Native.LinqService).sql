BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1403Tests_2"
(
	"event_id"          Integer       NOT NULL,
	"event_description" NVarChar(255) NOT NULL,

	PRIMARY KEY ("event_id")
)

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "Issue1403Tests_2"
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
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t1"."event_id",
	"t1"."event_description"
FROM
	"Issue1403Tests_2" "t1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1403Tests_2"

