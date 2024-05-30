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
	[BigIntValue]
)
VALUES
(
	101,
	12
)

BeforeExecute
-- SqlCe

SELECT
	[entity].[ID] as [Id],
	[entity].[BigIntValue] as [TestField],
	[entity].[IntValue] as [Int32Field]
FROM
	[LinqDataTypes] [entity]
WHERE
	[entity].[BigIntValue] = 12

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @Id

