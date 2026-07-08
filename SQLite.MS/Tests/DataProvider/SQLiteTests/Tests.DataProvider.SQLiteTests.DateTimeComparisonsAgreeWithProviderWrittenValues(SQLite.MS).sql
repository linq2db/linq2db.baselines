-- SQLite.MS SQLite

INSERT INTO [DateTimePrecisionTable]([Id], [DateTime]) VALUES(1, '2020-02-29 17:54:55.00065')

-- SQLite.MS SQLite

INSERT INTO [DateTimePrecisionTable]([Id], [DateTime]) VALUES(2, '2020-02-29 17:54:55')

-- SQLite.MS SQLite
DECLARE @subMillisecond  -- DateTime
SET     @subMillisecond = '2020-02-29 17:54:55.00065'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) = strftime('%Y-%m-%d %H:%M:%f', @subMillisecond)

-- SQLite.MS SQLite
DECLARE @subMillisecond  -- DateTime
SET     @subMillisecond = '2020-02-29 17:54:55.00065'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) > strftime('%Y-%m-%d %H:%M:%f', @subMillisecond)

-- SQLite.MS SQLite
DECLARE @subMillisecond  -- DateTime
SET     @subMillisecond = '2020-02-29 17:54:55.00065'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) < strftime('%Y-%m-%d %H:%M:%f', @subMillisecond)

-- SQLite.MS SQLite
DECLARE @wholeSecond  -- DateTime
SET     @wholeSecond = '2020-02-29 17:54:55.000'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) = strftime('%Y-%m-%d %H:%M:%f', @wholeSecond)

-- SQLite.MS SQLite
DECLARE @wholeSecond  -- DateTime
SET     @wholeSecond = '2020-02-29 17:54:55.000'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) > strftime('%Y-%m-%d %H:%M:%f', @wholeSecond)

-- SQLite.MS SQLite
DECLARE @wholeSecond  -- DateTime
SET     @wholeSecond = '2020-02-29 17:54:55.000'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) < strftime('%Y-%m-%d %H:%M:%f', @wholeSecond)

