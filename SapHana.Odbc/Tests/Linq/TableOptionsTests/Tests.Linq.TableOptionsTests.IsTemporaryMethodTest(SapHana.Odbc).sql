-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTable"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Id",
	"t1"."Value",
	"t1"."Id",
	"t1"."Value"
FROM
	"TestTable" "t1"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

