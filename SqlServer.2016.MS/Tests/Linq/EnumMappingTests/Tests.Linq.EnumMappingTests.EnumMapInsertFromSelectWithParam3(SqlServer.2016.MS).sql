-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

-- SqlServer.2016.MS SqlServer.2016

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

-- SqlServer.2016.MS SqlServer.2016
DECLARE @param BigInt -- Int64
SET     @param = 11

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
SELECT
	[r].[ID],
	@param
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 11

-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

