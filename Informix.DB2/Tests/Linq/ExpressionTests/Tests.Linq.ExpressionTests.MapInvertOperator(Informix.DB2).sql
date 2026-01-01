-- Informix.DB2 Informix
DECLARE @addMask Integer(4) -- Int32
SET     @addMask = 3
DECLARE @removeMask Integer(4) -- Int32
SET     @removeMask = 12

UPDATE
	WarehouseTableDto t1
SET
	"Value" = BitAnd(BitOr(t1."Value", @addMask::Int), BITNOT(@removeMask::Int))

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	WarehouseTableDto t1

