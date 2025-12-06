-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	Issue681Table
WHERE
	Issue681Table.ID = @ID

