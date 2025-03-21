BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	RTRIM(REPLACE(CAST([p].[MoneyValue] AS NVarChar(31)), ',', '.'), '0.')
FROM
	[LinqDataTypes] [p]
WHERE
	LENGTH(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

