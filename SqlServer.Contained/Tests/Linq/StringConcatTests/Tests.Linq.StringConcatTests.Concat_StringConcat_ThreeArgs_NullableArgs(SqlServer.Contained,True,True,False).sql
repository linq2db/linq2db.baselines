-- SqlServer.Contained SqlServer.2019

SELECT
	Coalesce([t].[Value1], N'') + Coalesce([t].[Value2], N'') + [t].[Value3]
FROM
	[StringConcatThreeNullEntity] [t]
ORDER BY
	[t].[ID]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatThreeNullEntity] [t1]

