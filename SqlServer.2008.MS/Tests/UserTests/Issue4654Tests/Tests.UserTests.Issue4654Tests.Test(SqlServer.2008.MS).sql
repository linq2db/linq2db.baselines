-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(CAST([c_1].[Id] AS NVarChar(11)) AS NVarChar(4000)),
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CAST(CAST([o].[Id] AS NVarChar(11)) AS NVarChar(4000)),
	[o].[ProductName]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CAST(CAST([p].[Id] AS NVarChar(11)) AS NVarChar(4000)),
	[p].[Name]
FROM
	[Issue4654Product] [p]

