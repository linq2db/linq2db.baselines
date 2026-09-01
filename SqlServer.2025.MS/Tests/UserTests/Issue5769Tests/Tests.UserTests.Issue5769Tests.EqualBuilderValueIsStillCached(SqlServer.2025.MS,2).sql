-- SqlServer.2025.MS SqlServer.2025
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[JsonData] [r]
WHERE
	N'sub.name' = [r].[Value]

