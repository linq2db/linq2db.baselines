-- Firebird.2.5 Firebird
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	"testparams" "t"
SET
	"Test名前" = CAST(@Test AS Int)
WHERE
	"t"."Test名前" = 1

