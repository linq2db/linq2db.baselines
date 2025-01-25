BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	"Issue681Table" "t1"
SET
	"Value" = @Value
WHERE
	"t1".ID = @ID

