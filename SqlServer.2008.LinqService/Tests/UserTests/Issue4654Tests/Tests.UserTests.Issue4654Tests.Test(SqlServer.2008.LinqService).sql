BeforeExecute
-- SqlServer.2008

SELECT
	CAST([c_1].[Id] AS NVarChar(Max)),
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CAST([o].[Id] AS NVarChar(Max)),
	[o].[ProductName]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CAST([p].[Id] AS NVarChar(Max)),
	[p].[Name]
FROM
	[Issue4654Product] [p]

