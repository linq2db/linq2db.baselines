BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[entity].[ID],
	[entity].[BigIntValue],
	[entity].[IntValue]
FROM
	[LinqDataTypes] [entity]
WHERE
	[entity].[BigIntValue] = 12

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

