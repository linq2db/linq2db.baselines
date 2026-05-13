-- SqlCe

SELECT
	CAST(CAST([c_1].[Id] AS NVarChar(11)) AS NVarChar(255)) as [Id],
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CAST(CAST([o].[Id] AS NVarChar(11)) AS NVarChar(255)) as [Id],
	[o].[ProductName] as [Name]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CAST(CAST([p].[Id] AS NVarChar(11)) AS NVarChar(255)) as [Id],
	[p].[Name]
FROM
	[Issue4654Product] [p]

