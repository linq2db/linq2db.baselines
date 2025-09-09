BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	RTRIM(Replace(CAST([p].[MoneyValue] AS NVarChar(31)), ',', '.'), '0.')
FROM
	[LinqDataTypes] [p]
WHERE
	Length(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

