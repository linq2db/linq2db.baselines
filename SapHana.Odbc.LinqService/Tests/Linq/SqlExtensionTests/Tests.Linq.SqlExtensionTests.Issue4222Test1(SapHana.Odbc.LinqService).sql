BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Entry"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Entry"
(
	"Id"     Char (36)     NOT NULL,
	"RecSrc" NVarChar(255)     NULL,
	"Value"  Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Entry"

