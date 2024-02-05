BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],([t].[SmallIntValue]*7) || ' Day')
FROM
	[LinqDataTypes] [t]

