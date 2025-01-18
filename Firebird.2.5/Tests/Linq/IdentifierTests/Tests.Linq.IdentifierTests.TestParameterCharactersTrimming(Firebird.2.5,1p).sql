BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	"testparams" "t"
SET
	"1p" = CAST(@p AS Int)
WHERE
	"t"."1p" = 1

