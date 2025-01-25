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
	[BigIntValue],
	[IntValue]
)
VALUES
(
	101,
	4,
	10
)

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [r].[BigIntValue] IS NOT NULL AND [r].[IntValue] IS NOT NULL
			THEN 1
		ELSE 0
	END as [c1],
	[r].[BigIntValue] as [TargetType],
	[r].[IntValue] as [TargetID]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @Id

