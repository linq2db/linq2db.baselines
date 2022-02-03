BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%H', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],22 || ' Hour'))) as int)
FROM
	[LinqDataTypes] [t]

