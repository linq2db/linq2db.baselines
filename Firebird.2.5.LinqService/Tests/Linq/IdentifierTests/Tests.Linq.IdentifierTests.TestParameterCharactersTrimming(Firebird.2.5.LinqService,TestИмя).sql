BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	"testparams" "t"
SET
	"TestИмя" = CAST(@Test AS Int)
WHERE
	"t"."TestИмя" = 1

