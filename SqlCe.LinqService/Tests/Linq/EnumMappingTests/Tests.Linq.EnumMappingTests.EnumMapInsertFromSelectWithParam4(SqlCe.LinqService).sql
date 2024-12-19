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
DECLARE @param BigInt -- Int64
SET     @param = 11

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
SELECT
	[r].[ID],
	@param as [c1]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 11

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

