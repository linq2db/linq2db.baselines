BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "SelectExpressionTable"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO "SelectExpressionTable"
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
SET     @take = 1

SELECT
	1
FROM
	"SelectExpressionTable" "_"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "SelectExpressionTable"

