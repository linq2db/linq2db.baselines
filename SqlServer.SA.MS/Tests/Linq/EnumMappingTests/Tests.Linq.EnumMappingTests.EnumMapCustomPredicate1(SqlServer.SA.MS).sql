﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[entity].[ID],
	[entity].[BigIntValue]
FROM
	[LinqDataTypes] [entity]
WHERE
	[entity].[BigIntValue] = 12

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

