-- SqlServer.Contained SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Value]
FROM
	[QuarterlySales] UNPIVOT ([Value] FOR [Name] IN ([Q1], [Q2], [Q3], [Q4])) [t1]

