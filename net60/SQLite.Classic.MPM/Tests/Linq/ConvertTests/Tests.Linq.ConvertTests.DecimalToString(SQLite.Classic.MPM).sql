BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	RTRIM(Replace(Cast([p].[MoneyValue] as NVarChar(255)), ',', '.'), '0.')
FROM
	[LinqDataTypes] [p]
WHERE
	Length(Cast([p].[MoneyValue] as NVarChar(255))) > 0

