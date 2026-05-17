-- SQLite.Classic SQLite
DECLARE @year  -- Int32
SET     @year = 2010

SELECT
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', @year) || '-' || printf('%02d', [t].[ID]) || '-01 00:00:00.000')
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(strftime('%Y', strftime('%Y-%m-%d %H:%M:%f', printf('%04d', @year) || '-' || printf('%02d', [t].[ID]) || '-01 00:00:00.000')) AS INTEGER) = 2010

