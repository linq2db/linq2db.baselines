BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TestИмя  -- Int32
SET     @TestИмя = 2

UPDATE
	"testparams" "t"
SET
	"TestИмя" = ?
WHERE
	"t"."TestИмя" = 1

