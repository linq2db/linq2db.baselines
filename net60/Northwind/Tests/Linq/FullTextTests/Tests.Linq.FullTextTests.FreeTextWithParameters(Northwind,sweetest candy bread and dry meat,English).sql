BeforeExecute
-- Northwind SqlServer.2017
DECLARE @search_1 NVarChar(4000) -- String
SET     @search_1 = N'sweetest candy bread and dry meat'
DECLARE @lang NVarChar(4000) -- String
SET     @lang = N'English'

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
WHERE
	FREETEXT(([c_1].[CategoryName], [c_1].[Description]), @search_1, LANGUAGE @lang)
ORDER BY
	[c_1].[CategoryID] DESC

