-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = {1,2,3,4,5}

UPDATE
	LinqDataTypes t
SET
	BinaryValue = @BinaryValue
WHERE
	t.ID = 1

-- Informix.DB2 Informix

SELECT FIRST 1
	Length(t.BinaryValue)
FROM
	LinqDataTypes t
WHERE
	t.ID = 1

-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary -- Binary
SET     @BinaryValue = NULL

UPDATE
	LinqDataTypes t
SET
	BinaryValue = @BinaryValue
WHERE
	t.ID = 1

