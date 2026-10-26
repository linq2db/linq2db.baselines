-- SapHana.Native SapHana
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	"testparams" "t"
SET
	"from" = :"from"
WHERE
	"t"."from" = 1

