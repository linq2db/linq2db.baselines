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
DECLARE @p  -- Byte
SET     @p = 1
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	?
FROM
	"SelectExpressionTable" "t1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SelectExpressionTable"

