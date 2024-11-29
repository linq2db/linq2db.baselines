BeforeExecute
-- SQLite.Classic SQLite
DECLARE @year  -- Int32
SET     @year = 2010

SELECT
	[t].[c1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', printf('%04d', @year) || '-' || printf('%02d', [p].[ID]) || '-01 00:00:00.000') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	CAST(strftime('%Y', [t].[c1]) AS INTEGER) = 2010

