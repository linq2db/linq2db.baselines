-- SqlServer.2017.MS SqlServer.2017

SELECT
	Coalesce([t].[Value1], N'') + CAST([t].[Value2] AS NVarChar(11)) + Lower(CAST([t].[Value3] AS Char(36)))
FROM
	[StringConcatIntGuidNullEntity] [t]
ORDER BY
	[t].[ID]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatIntGuidNullEntity] [t1]

