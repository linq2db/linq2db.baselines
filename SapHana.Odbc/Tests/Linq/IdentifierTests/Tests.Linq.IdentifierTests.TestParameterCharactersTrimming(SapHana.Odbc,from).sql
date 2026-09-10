-- SapHana.Odbc SapHanaOdbc
DECLARE @from Int -- Int32
SET     @from = 2

UPDATE
	"testparams" "t"
SET
	"from" = ?
WHERE
	"t"."from" = 1

