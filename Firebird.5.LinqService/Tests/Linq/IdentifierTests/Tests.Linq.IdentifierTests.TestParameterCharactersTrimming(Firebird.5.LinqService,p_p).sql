BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p_p Integer -- Int32
SET     @p_p = 2

UPDATE
	"testparams" "t"
SET
	"p_p" = CAST(@p_p AS Int)
WHERE
	"t"."p_p" = 1

