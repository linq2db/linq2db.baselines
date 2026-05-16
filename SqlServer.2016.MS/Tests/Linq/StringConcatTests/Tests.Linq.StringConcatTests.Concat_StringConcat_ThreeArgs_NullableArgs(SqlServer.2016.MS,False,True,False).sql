-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[Value1] + Coalesce([t].[Value2], N'') + [t].[Value3]
FROM
	[StringConcatThreeNullEntity] [t]
ORDER BY
	[t].[ID]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatThreeNullEntity] [t1]

