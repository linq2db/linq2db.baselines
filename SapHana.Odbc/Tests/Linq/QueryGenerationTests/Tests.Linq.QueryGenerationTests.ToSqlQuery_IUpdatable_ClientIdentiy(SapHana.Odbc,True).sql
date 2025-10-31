-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TableWithIdentity" "t1"
SET
	"Id" = 492,
	"Value" = 123

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
LIMIT 2

