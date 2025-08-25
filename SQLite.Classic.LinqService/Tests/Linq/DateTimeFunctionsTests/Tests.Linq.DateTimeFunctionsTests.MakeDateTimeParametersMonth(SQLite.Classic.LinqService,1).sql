BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @month  -- Int32
SET     @month = 1

SELECT
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', 2010 + [t].[ID]) || '-' || printf('%02d', @month) || '-01 00:00:00.000')
FROM
	[LinqDataTypes] [t]

