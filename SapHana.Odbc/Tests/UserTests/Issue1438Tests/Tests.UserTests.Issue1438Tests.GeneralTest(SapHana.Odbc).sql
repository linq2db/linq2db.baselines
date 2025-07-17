BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Has TinyInt(1) -- Byte
SET     @Has = 1

INSERT INTO "Issue1438"
(
	"Has"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"t1"."Id",
	"t1"."Has"
FROM
	"Issue1438" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

