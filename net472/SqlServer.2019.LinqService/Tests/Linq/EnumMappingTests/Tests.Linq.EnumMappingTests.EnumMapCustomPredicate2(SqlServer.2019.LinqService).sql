﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	101,
	12
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[entity].[ID],
	[entity].[BigIntValue],
	[entity].[IntValue]
FROM
	[LinqDataTypes] [entity]
WHERE
	[entity].[BigIntValue] = 12

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p1

