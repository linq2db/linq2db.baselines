﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	[t]
SET
	[t].[BinaryValue] = @BinaryValue
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	DataLength([t].[BinaryValue])
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @BinaryValue VarBinary(8000) -- Binary
SET     @BinaryValue = NULL

UPDATE
	[t]
SET
	[t].[BinaryValue] = @BinaryValue
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

