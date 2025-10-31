-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST([c_1].[Id] AS NVarChar(11)),
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CAST([o].[Id] AS NVarChar(11)),
	[o].[ProductName]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CAST([p].[Id] AS NVarChar(11)),
	[p].[Name]
FROM
	[Issue4654Product] [p]

