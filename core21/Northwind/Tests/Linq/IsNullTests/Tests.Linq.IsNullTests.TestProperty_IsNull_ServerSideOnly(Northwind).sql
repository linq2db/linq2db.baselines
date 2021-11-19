BeforeExecute
-- Northwind SqlServer.2017 (asynchronously)
DECLARE @defaultCategory NVarChar(4000) -- String
SET     @defaultCategory = N'test'

SELECT
	ISNULL([c_1].[CategoryName], @defaultCategory)
FROM
	[Categories] [c_1]

