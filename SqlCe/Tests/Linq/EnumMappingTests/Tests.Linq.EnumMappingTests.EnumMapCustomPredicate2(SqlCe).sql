-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

-- SqlCe

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

-- SqlCe

SELECT
	[entity].[ID] as [Id],
	[entity].[BigIntValue] as [TestField],
	[entity].[IntValue] as [Int32Field]
FROM
	[LinqDataTypes] [entity]
WHERE
	[entity].[BigIntValue] = 12

-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

