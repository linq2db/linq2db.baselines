BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	user
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	informix.Issue681Table
WHERE
	informix.Issue681Table.ID = @ID

