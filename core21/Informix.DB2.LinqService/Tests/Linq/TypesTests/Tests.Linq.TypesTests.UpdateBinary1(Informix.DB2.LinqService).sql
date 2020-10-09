BeforeExecute
-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = System.Byte[]

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

