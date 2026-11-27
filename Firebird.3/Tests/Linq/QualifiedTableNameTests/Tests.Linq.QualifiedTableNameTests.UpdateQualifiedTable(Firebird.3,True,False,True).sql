-- Firebird.3 Firebird3
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"QualifiedNameTable" "t1"
SET
	"Value" = CAST(@Value AS Int)
WHERE
	"t1".ID = @ID

