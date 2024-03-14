BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%M', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],5 || ' Minute'))) as int)
FROM
	[LinqDataTypes] [t]

