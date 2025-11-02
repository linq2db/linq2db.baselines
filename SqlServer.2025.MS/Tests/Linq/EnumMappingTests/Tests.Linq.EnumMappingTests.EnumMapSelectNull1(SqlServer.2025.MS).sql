-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

INSERT INTO [LinqDataTypes]
(
	[ID]
)
VALUES
(
	101
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

