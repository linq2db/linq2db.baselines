BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ValueItem"
(
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "ValueItem"
(
	"Value"
)
VALUES
(
	123
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"row_1"."Value"
FROM
	"ValueItem" "row_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ValueItem"

