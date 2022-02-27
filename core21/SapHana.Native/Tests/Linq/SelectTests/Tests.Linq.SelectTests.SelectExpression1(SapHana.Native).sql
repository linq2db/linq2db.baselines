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
DECLARE @p1 Char(36) -- AnsiStringFixedLength
SET     @p1 = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p2 Char(36) -- AnsiStringFixedLength
SET     @p2 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	:"p1",
	:"p2"
FROM
	"SelectExpressionTable" "_"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "SelectExpressionTable"

