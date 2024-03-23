BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @Id

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
DECLARE @Int32Field Int -- Int32
SET     @Int32Field = 4

UPDATE
	[LinqDataTypes]
SET
	[IntValue] = @Int32Field
WHERE
	[LinqDataTypes].[ID] = 101 AND [LinqDataTypes].[IntValue] = 3

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 4

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @Id

