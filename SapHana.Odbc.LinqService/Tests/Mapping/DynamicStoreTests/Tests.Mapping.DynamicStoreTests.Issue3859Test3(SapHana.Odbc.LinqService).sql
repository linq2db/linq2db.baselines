BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DynamicColumnsTestTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DynamicColumnsTestTable"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id"
FROM
	"DynamicColumnsTestTable" "x"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DynamicColumnsTestTable"

