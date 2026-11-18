-- SapHana.Odbc SapHanaOdbc
DECLARE @arr Int -- Int32
SET     @arr = 3

INSERT INTO "ArrayLengthTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ArrayLengthTable" "t1"
LIMIT 2

