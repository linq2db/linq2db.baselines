-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[Value1] + Coalesce([t].[Value2], N'')
FROM
	[StringConcatNullEntity] [t]
ORDER BY
	[t].[ID]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2]
FROM
	[StringConcatNullEntity] [t1]

