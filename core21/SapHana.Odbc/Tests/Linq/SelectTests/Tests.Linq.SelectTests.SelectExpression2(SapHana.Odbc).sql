BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SelectExpressionTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SelectExpressionTable"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO "SelectExpressionTable"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1 Char(36) -- AnsiStringFixedLength
SET     @p_1 = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p_2 Char(36) -- AnsiStringFixedLength
SET     @p_2 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	?,
	?
FROM
	"SelectExpressionTable" "_"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SelectExpressionTable"

