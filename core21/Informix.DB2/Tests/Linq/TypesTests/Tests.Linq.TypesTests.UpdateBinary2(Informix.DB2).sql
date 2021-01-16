BeforeExecute
-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = System.Byte[]
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.BinaryValue = @BinaryValue
WHERE
	LinqDataTypes.ID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = System.Byte[]
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.BinaryValue = @BinaryValue
WHERE
	LinqDataTypes.ID = @ID

