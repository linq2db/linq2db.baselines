BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTrun"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTrun"
(
	"ID"     Integer         NOT NULL,
	"Field1" Decimal(38, 10) NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM "TestTrun"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTrun"

