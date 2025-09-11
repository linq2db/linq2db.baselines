BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

INSERT INTO "SomeTable"
(
	"Id",
	"ClassProp",
	"Interface"
)
VALUES
(
	1,
	1,
	0
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"
LIMIT 2

