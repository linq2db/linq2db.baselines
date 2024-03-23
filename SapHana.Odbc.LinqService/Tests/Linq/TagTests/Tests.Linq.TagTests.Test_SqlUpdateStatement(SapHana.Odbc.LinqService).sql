BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTable"
(
	"Id" Integer NOT NULL,
	"Fd" Integer     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Fd  -- Int32
SET     @Fd = 1

/* My Test */
UPDATE
	"TestTable" "t1"
SET
	"Fd" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

