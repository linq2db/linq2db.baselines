BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	Length(Cast([p].[MoneyValue] as NVarChar(255))) > 0

