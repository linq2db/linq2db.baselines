-- Firebird.2.5 Firebird
DECLARE @p_p Integer -- Int32
SET     @p_p = 2

UPDATE
	"testparams" "t"
SET
	"p_p" = CAST(@p_p AS Int)
WHERE
	"t"."p_p" = 1

