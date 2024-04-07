BeforeExecute
-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = {1,2,3,4,5}

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.BinaryValue = @BinaryValue
WHERE
	LinqDataTypes.ID = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.BinaryValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1

