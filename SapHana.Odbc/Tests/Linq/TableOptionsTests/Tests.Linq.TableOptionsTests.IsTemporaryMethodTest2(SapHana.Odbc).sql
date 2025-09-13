BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTable"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value",
	"t2"."Id",
	"t2"."Value",
	"t3"."Id",
	"t3"."Value"
FROM
	"TestTable" "t1"
		CROSS JOIN "TestTable" "t2"
		INNER JOIN "TestTable" "t3" ON "t2"."Id" = "t3"."Id"
WHERE
	"t1"."Id" = "t2"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

