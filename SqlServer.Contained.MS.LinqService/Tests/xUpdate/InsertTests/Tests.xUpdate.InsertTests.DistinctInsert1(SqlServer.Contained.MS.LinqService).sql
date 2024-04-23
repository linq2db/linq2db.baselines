BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT
	CAST(Floor([t1].[c1] + 1001) AS Int),
	NewID(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST([_].[ID] AS Float) / 3) as [c1]
		FROM
			[LinqDataTypes] [_]
	) [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

