BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	"testparams" "t"
SET
	"Test-Name" = CAST(@TestName AS Int)
WHERE
	"t"."Test-Name" = 1

