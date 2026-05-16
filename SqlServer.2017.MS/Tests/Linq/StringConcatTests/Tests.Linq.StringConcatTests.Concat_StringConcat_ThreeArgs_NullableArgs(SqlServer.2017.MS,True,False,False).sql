-- SqlServer.2017.MS SqlServer.2017

SELECT
	Coalesce([t].[Value1], N'') + [t].[Value2] + [t].[Value3]
FROM
	[StringConcatThreeNullEntity] [t]
ORDER BY
	[t].[ID]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatThreeNullEntity] [t1]

