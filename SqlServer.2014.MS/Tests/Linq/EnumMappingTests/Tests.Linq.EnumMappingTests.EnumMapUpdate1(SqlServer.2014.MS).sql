﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	101,
	11
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

UPDATE
	[LinqDataTypes]
SET
	[BigIntValue] = 12
WHERE
	[LinqDataTypes].[ID] = 101 AND [LinqDataTypes].[BigIntValue] = 11

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

