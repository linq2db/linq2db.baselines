﻿BeforeExecute
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
	CAST([t2].[c1] + 1001 AS Int) as [c1],
	NewID() as [c2],
	1 as [c3]
FROM
	(
		SELECT DISTINCT
			Floor(CAST([t1].[ID] AS Float) / 3) as [c1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]

BeforeExecute
-- SqlCe

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

