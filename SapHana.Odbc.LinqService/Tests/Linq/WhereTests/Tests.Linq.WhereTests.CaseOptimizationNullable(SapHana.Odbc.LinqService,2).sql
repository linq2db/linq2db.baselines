BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @filterValue  -- Int32
SET     @filterValue = 2

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"
WHERE
	"x"."Id" = ?

