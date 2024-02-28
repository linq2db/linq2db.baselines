BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT
	Convert(Int, [t1].[c1] + 1001),
	NewID(1),
	1
FROM
	(
		SELECT DISTINCT
			Floor(Convert(Float, [_].[ID]) / 3) as [c1]
		FROM
			[LinqDataTypes] [_]
	) [t1]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

