-- SqlServer.2008.MS SqlServer.2008

SELECT
	Coalesce([t].[Value1], N'') + [t].[Value2] + [t].[Value3]
FROM
	[StringConcatThreeNullEntity] [t]
ORDER BY
	[t].[ID]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatThreeNullEntity] [t1]

