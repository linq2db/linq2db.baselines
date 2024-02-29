BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Cast([t].[MoneyValue] as NVarChar(31))
FROM
	[LinqDataTypes] [t]
WHERE
	Length(Cast([t].[MoneyValue] as NVarChar(31))) > 0

