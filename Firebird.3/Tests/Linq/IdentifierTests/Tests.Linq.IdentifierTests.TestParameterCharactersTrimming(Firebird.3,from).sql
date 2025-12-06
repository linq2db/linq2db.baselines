-- Firebird.3 Firebird3
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	"testparams" "t"
SET
	"from" = CAST(@from AS Int)
WHERE
	"t"."from" = 1

