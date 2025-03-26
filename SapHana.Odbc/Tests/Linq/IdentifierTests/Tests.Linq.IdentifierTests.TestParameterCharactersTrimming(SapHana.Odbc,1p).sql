BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @1p Int -- Int32
SET     @1p = 2

UPDATE
	"testparams" "t"
SET
	"1p" = ?
WHERE
	"t"."1p" = 1

