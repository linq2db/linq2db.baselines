BeforeExecute
-- SqlServer.2005
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[t]
SET
	[t].[BinaryValue] = @BinaryValue
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = @ID

BeforeExecute
-- SqlServer.2005
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0504030201
DECLARE @ID Int -- Int32
SET     @ID = 2

UPDATE
	[t]
SET
	[t].[BinaryValue] = @BinaryValue
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = @ID

