-- SqlServer.2005

SELECT
	Coalesce([t].[Value1], N'') + Coalesce([t].[Value2], N'')
FROM
	[StringConcatNullEntity] [t]
ORDER BY
	[t].[ID]

-- SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2]
FROM
	[StringConcatNullEntity] [t1]

