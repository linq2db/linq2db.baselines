BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value Int -- Int32
SET     @value = 123

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
LIMIT 2

