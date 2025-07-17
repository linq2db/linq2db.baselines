BeforeExecute
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @addition Int -- Int32
SET     @addition = 123

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
SELECT
	345,
	"t1"."Value" + ?
FROM
	"TableWithIdentitySrc" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

