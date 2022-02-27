BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1316Tests"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	"ID"
)
VALUES
(
	:"ID"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"_"."ID"
FROM
	"Issue1316Tests" "_"
WHERE
	"_"."ID" IN (4, 5, 6)
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1316Tests"

