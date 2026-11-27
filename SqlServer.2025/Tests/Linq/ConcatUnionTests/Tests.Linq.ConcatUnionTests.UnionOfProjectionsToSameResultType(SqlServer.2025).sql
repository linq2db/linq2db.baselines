-- SqlServer.2025
SELECT
	CAST([c_1].[Id] AS NVarChar(11)),
	[c_1].[Name]
FROM
	[UnionSourceCustomer] [c_1]
UNION
SELECT
	CAST([o].[Id] AS NVarChar(11)),
	[o].[ProductName]
FROM
	[UnionSourceOrder] [o]
UNION
SELECT
	CAST([p].[Id] AS NVarChar(11)),
	[p].[Name]
FROM
	[UnionSourceProduct] [p]

