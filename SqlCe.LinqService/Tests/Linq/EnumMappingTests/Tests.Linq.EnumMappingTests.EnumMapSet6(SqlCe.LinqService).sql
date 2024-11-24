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
	[IntValue]
)
VALUES
(
	101,
	3
)

BeforeExecute
-- SqlCe

UPDATE
	[LinqDataTypes]
SET
	[IntValue] = 4
WHERE
	[LinqDataTypes].[ID] = 101 AND [LinqDataTypes].[IntValue] = 3

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 4

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

