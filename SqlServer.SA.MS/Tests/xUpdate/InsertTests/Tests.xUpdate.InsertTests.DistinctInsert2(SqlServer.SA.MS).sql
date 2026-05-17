-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT
	CAST(Floor([t2].[Value_1] + 1001) AS Int),
	NewID(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST([t1].[ID] AS Float) / 3) as [Value_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]

-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

