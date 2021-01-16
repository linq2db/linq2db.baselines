BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

BeforeExecute
-- Informix.DB2 Informix
DECLARE @arr VarBinary(4) -- Binary
SET     @arr = System.Byte[]

INSERT INTO LinqDataTypes
(
	ID,
	BoolValue,
	BinaryValue
)
VALUES
(
	1001,
	't',
	@arr
)

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

