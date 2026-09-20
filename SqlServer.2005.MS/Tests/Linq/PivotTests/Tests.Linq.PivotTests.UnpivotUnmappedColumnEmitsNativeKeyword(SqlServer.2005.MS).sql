-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Value]
FROM
	[QuarterlySales] UNPIVOT ([Value] FOR [Name] IN ([Q1], [Q2])) [t1]

