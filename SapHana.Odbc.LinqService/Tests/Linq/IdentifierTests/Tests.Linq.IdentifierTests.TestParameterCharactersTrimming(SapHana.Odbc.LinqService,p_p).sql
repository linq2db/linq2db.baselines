BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_p Int -- Int32
SET     @p_p = 2

UPDATE
	"testparams" "t"
SET
	"p_p" = ?
WHERE
	"t"."p_p" = 1

