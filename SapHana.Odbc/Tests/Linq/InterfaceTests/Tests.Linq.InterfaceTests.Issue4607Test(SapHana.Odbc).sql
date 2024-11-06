BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SomeTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SomeTable"
(
	"ClassProp" TinyInt NOT NULL,
	"Interface" TinyInt NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "SomeTable"
(
	"ClassProp",
	"Interface"
)
VALUES
(
	1,
	0
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SomeTable"

