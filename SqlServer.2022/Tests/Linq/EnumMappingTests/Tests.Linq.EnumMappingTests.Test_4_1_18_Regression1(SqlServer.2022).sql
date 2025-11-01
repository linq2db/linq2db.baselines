-- SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

-- SqlServer.2022

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue],
	[IntValue]
)
VALUES
(
	101,
	12,
	10
)

-- SqlServer.2022

SELECT
	IIF([t1].[BigIntValue] IS NOT NULL AND [t1].[IntValue] IS NOT NULL, 1, 0),
	[t1].[BigIntValue],
	[t1].[IntValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 101

-- SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

