BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] IN (1, 2)

