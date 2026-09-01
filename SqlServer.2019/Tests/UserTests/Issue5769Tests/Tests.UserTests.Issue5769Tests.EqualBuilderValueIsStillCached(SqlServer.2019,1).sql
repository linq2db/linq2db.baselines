-- SqlServer.2019
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[JsonData] [r]
WHERE
	N'sub.name' = [r].[Value]

