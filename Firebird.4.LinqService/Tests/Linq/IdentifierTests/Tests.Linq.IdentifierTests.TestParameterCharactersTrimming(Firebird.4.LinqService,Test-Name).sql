BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	"testparams" "t"
SET
	"Test-Name" = CAST(@TestName AS Int)
WHERE
	"t"."Test-Name" = 1

