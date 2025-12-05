-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	123
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
LIMIT 2

