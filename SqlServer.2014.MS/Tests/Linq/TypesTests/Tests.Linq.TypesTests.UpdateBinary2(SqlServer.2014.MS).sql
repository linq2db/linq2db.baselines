﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0504030201
DECLARE @ID Int -- Int32
SET     @ID = 2

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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

