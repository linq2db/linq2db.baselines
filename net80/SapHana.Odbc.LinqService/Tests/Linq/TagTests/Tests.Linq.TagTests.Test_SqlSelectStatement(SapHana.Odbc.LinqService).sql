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

/* My Test */
SELECT
	"t1"."Id",
	"t1"."Fd"
FROM
	"TestTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

