BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Cast((round((round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],100 || ' Minute')) - julianday([t].[DateTimeValue])) * 864000000000)) / 600000000)) as Float)
FROM
	[LinqDataTypes] [t]

