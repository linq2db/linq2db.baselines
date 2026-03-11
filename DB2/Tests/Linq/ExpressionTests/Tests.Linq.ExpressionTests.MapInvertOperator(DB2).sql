-- DB2 DB2.LUW DB2LUW
DECLARE @addMask Integer(4) -- Int32
SET     @addMask = 3
DECLARE @removeMask Integer(4) -- Int32
SET     @removeMask = 12

UPDATE
	"WarehouseTableDto" "t1"
SET
	"Value" = BitAnd(BitOr("t1"."Value", @addMask), BITNOT(@removeMask))

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"WarehouseTableDto" "t1"
FETCH NEXT 2 ROWS ONLY

