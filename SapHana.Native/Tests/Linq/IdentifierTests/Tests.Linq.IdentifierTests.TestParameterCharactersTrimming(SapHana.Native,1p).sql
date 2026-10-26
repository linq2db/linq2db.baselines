-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	"testparams" "t"
SET
	"1p" = :"p"
WHERE
	"t"."1p" = 1

