-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Date VarChar(23) -- AnsiString
SET     @Date = '2020-02-29 00:00:00.000'
DECLARE @dateTo VarChar(23) -- AnsiString
SET     @dateTo = '2020-03-10 00:00:00.000'

WITH [x] ([Date_1], [Date_Year], [Date_Month])
AS
(
	SELECT
		@Date,
		CAST(strftime('%Y', @Date) AS INTEGER),
		CAST(strftime('%m', @Date) AS INTEGER)
	UNION ALL
	SELECT
		strftime('%Y-%m-%d %H:%M:%f', [t1].[Date_1], '1 Day'),
		CAST(strftime('%Y', strftime('%Y-%m-%d %H:%M:%f', [t1].[Date_1], '1 Day')) AS INTEGER),
		CAST(strftime('%m', strftime('%Y-%m-%d %H:%M:%f', [t1].[Date_1], '1 Day')) AS INTEGER)
	FROM
		[x] [t1]
	WHERE
		strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t1].[Date_1], '1 Day')) < strftime('%Y-%m-%d %H:%M:%f', @dateTo)
)
SELECT
	[r].[Date_1],
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', [r].[Date_Year]) || '-01-01 00:00:00.000'),
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', [r].[Date_Year]) || '-' || printf('%02d', [r].[Date_Month]) || '-01 00:00:00.000')
FROM
	[x] [r]

