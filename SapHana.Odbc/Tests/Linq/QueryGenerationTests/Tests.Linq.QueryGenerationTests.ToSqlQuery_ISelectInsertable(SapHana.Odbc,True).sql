-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentitySrc"
(
	"Value"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	"t1"."Value" + 123
FROM
	"TableWithIdentitySrc" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

