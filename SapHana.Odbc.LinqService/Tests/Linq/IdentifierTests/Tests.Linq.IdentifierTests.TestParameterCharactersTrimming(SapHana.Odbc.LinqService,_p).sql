BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @_p Int -- Int32
SET     @_p = 2

UPDATE
	"testparams" "t"
SET
	"_p" = ?
WHERE
	"t"."_p" = 1

