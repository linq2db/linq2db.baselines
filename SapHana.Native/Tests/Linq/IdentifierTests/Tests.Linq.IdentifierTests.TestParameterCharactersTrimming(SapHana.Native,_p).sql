-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	"testparams" "t"
SET
	"_p" = :"p"
WHERE
	"t"."_p" = 1

