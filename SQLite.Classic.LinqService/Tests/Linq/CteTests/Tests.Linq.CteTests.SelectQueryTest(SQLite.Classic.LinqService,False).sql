BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Date VarChar(23) -- AnsiString
SET     @Date = '2020-02-29 00:00:00.000'
DECLARE @dateTo VarChar(23) -- AnsiString
SET     @dateTo = '2020-03-10 00:00:00.000'

WITH [x] ([Counter], [Date_1])
AS
(
	SELECT
		CAST(1 AS INTEGER),
		@Date
	UNION ALL
	SELECT
		[t1].[Counter] + 1,
		strftime('%Y-%m-%d %H:%M:%f', [t1].[Date_1], '1 Day')
	FROM
		[x] [t1]
	WHERE
		strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t1].[Date_1], '1 Day')) < strftime('%Y-%m-%d %H:%M:%f', @dateTo)
)
SELECT
	[t2].[Counter],
	[t2].[Date_1]
FROM
	[x] [t2]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Date VarChar(23) -- AnsiString
SET     @Date = '2020-02-29 00:00:00.000'
DECLARE @dateTo VarChar(23) -- AnsiString
SET     @dateTo = '2020-03-10 00:00:00.000'

WITH [x] ([Counter], [Date_1])
AS
(
	SELECT
		CAST(1 AS INTEGER),
		@Date
	UNION ALL
	SELECT
		[t1].[Counter] + 1,
		strftime('%Y-%m-%d %H:%M:%f', [t1].[Date_1], '1 Day')
	FROM
		[x] [t1]
	WHERE
		strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t1].[Date_1], '1 Day')) < strftime('%Y-%m-%d %H:%M:%f', @dateTo)
)
SELECT
	[t2].[Counter],
	[t2].[Date_1]
FROM
	[x] [t2]

