BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	Issue681Table t1
SET
	"Value" = @Value
WHERE
	t1.ID = @ID

