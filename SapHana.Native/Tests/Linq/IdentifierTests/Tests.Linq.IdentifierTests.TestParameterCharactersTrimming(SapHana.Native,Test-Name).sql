-- SapHana.Native SapHana
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	"testparams" "t"
SET
	"Test-Name" = :"TestName"
WHERE
	"t"."Test-Name" = 1

