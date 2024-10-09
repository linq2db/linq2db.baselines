BeforeExecute
-- SQLite.Classic SQLite
DECLARE @year  -- Int32
SET     @year = 2010

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', printf('%04d', @year) || '-' || printf('%02d', [t].[ID]) || '-01 00:00:00.000') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	CAST(strftime('%Y', [t_1].[c1]) AS INTEGER) = 2010

