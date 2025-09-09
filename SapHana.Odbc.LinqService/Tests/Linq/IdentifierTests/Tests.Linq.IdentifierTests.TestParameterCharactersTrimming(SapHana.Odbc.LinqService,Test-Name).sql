BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Test-Name Int -- Int32
SET     @Test-Name = 2

UPDATE
	"testparams" "t"
SET
	"Test-Name" = ?
WHERE
	"t"."Test-Name" = 1

