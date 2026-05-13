-- SqlServer.2016

SELECT
	Coalesce([t].[Value1], N'') + [t].[Value2]
FROM
	[StringConcatNullEntity] [t]
ORDER BY
	[t].[ID]

-- SqlServer.2016

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2]
FROM
	[StringConcatNullEntity] [t1]

