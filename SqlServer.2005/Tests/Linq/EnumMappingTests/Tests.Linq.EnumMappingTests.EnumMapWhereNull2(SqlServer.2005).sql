﻿BeforeExecute
-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- SqlServer.2005

INSERT INTO [LinqDataTypes]
(
	[ID]
)
VALUES
(
	101
)

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[ID] IS NOT NULL AND [r].[BigIntValue] IS NULL

BeforeExecute
-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

