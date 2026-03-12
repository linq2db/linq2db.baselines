-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTrun"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTrunDetail"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTrunDetail"
(
	"ID"         Integer NOT NULL,
	"TestTrunID" Integer NOT NULL,
	"IsActive"   TinyInt NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTrun"
(
	"ID"     Integer         NOT NULL,
	"Field1" Decimal(38, 10) NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Odbc SapHanaOdbc

DELETE FROM "TestTrun"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTrun"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTrunDetail"

