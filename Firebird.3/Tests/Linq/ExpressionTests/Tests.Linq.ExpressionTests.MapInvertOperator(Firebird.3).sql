-- Firebird.3 Firebird3
DECLARE @addMask Integer -- Int32
SET     @addMask = 3
DECLARE @removeMask Integer -- Int32
SET     @removeMask = 12

UPDATE
	"WarehouseTableDto" "t1"
SET
	"Value" = Bin_And(Bin_Or("t1"."Value", CAST(@addMask AS Int)), BIN_NOT(CAST(@removeMask AS Int)))

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"WarehouseTableDto" "t1"
FETCH NEXT 2 ROWS ONLY

