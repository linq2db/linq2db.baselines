-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Flag],
	[t1].[Dto],
	[t1].[Dto2],
	[t1].[Stamp],
	[t1].[StampN]
FROM
	[MixedStampRow] [t1]

-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (2)
	CAST((IIF([r].[Stamp] < [r].[Dto], [r].[Dto], [r].[Dto2]) AT TIME ZONE N'UTC') AS DateTime2)
FROM
	[MixedStampRow] [r]

