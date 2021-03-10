BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Cast(CASE
		WHEN [t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0
			THEN Floor([t].[MoneyValue])
		ELSE Round([t].[MoneyValue], 0)
	END as TinyInt)
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(CASE
		WHEN [t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0
			THEN Floor([t].[MoneyValue])
		ELSE Round([t].[MoneyValue], 0)
	END as TinyInt) > 0

