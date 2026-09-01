-- SqlServer.2017.MS SqlServer.2017
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[JsonData] [r]
WHERE
	N'sub.name' = [r].[Value]

