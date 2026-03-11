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
	5
)

-- SqlCe

SELECT
	[r].[ID] as [Id],
	[r].[BigIntValue] as [TestField]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101

-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

