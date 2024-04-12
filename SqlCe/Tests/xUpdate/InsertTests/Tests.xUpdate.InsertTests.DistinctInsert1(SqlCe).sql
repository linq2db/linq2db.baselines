BeforeExecute
BeginTransaction
BeforeExecute
-- SqlCe

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

BeforeExecute
-- SqlCe

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT
	CAST([t1].[c1] + 1001 AS Int) as [c1],
	NewID() as [c2],
	1 as [c3]
FROM
	(
		SELECT DISTINCT
			Floor(CAST([_].[ID] AS Float) / 3) as [c1]
		FROM
			[LinqDataTypes] [_]
	) [t1]

BeforeExecute
-- SqlCe

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

