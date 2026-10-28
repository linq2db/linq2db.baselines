-- SapHana.Native SapHana
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	"testparams" "t"
SET
	"TestИмя" = :"Test"
WHERE
	"t"."TestИмя" = 1

