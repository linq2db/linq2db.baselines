﻿BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

BeforeExecute
-- SqlServer.2017

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue],
	[IntValue]
)
VALUES
(
	101,
	4,
	10
)

BeforeExecute
-- SqlServer.2017

SELECT 
	[r].[BigIntValue], 
	[r].[IntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

