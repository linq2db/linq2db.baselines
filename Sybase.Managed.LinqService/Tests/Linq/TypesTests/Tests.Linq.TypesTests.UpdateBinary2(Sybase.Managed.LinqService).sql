﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes]
SET
	[t].[BinaryValue] = @BinaryValue
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = @ID

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0504030201
DECLARE @ID Integer -- Int32
SET     @ID = 2

UPDATE
	[LinqDataTypes]
SET
	[t].[BinaryValue] = @BinaryValue
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = @ID

BeforeExecute
-- Sybase.Managed Sybase

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

