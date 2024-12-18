BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

BeforeExecute
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

BeforeExecute
-- SqlCe

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = 101 AND
	[LinqDataTypes].[ID] IS NOT NULL AND
	[LinqDataTypes].[BigIntValue] = 12 AND
	[LinqDataTypes].[BigIntValue] IS NOT NULL

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

