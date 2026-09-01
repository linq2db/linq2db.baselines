-- SqlServer.2022
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[JsonData] [r]
WHERE
	N'sub.name' = [r].[Value]

-- SqlServer.2022
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[JsonData] [t1]

-- SqlServer.2022
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[JsonData] [r]
WHERE
	N'sub.name2' = [r].[Value]

-- SqlServer.2022
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[JsonData] [t1]

