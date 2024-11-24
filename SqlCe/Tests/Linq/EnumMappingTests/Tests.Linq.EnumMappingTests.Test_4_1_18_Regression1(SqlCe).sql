﻿BeforeExecute
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
	[BigIntValue],
	[IntValue]
)
VALUES
(
	101,
	12,
	10
)

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [t1].[BigIntValue] IS NOT NULL AND [t1].[IntValue] IS NOT NULL
			THEN 1
		ELSE 0
	END as [c1],
	[t1].[BigIntValue] as [TargetType],
	[t1].[IntValue] as [TargetID]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 101

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

