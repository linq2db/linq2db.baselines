-- SqlServer.Northwind SqlServer.2019
DECLARE @search NVarChar(4000) -- String
SET     @search = N'sweetest candy bread and dry meat'
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
	FREETEXT(([c_1].[CategoryName], [c_1].[Description]), @search, LANGUAGE @lang)
ORDER BY
	[c_1].[CategoryID] DESC

