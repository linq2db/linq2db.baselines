-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	"testparams" "t"
SET
	"_p" = CAST(@p AS Int)
WHERE
	"t"."_p" = 1

