-- SqlServer.Northwind SqlServer.2019
DECLARE @defaultCategory NVarChar(4000) -- String
SET     @defaultCategory = N'test'

SELECT
	ISNULL([c_1].[CategoryName], @defaultCategory)
FROM
	[Categories] [c_1]

