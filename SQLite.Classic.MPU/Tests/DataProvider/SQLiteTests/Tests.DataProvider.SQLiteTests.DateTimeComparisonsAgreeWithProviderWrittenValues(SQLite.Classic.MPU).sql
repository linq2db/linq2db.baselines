-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [DateTimePrecisionTable]([Id], [DateTime]) VALUES(1, '2020-02-29 17:54:55.00065')

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [DateTimePrecisionTable]([Id], [DateTime]) VALUES(2, '2020-02-29 17:54:55')

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @subMillisecond VarChar(25) -- AnsiString
SET     @subMillisecond = '2020-02-29 17:54:55.00065'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) = strftime('%Y-%m-%d %H:%M:%f', @subMillisecond)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @subMillisecond VarChar(25) -- AnsiString
SET     @subMillisecond = '2020-02-29 17:54:55.00065'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) > strftime('%Y-%m-%d %H:%M:%f', @subMillisecond)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @subMillisecond VarChar(25) -- AnsiString
SET     @subMillisecond = '2020-02-29 17:54:55.00065'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) < strftime('%Y-%m-%d %H:%M:%f', @subMillisecond)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @wholeSecond VarChar(23) -- AnsiString
SET     @wholeSecond = '2020-02-29 17:54:55.000'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) = strftime('%Y-%m-%d %H:%M:%f', @wholeSecond)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @wholeSecond VarChar(23) -- AnsiString
SET     @wholeSecond = '2020-02-29 17:54:55.000'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) > strftime('%Y-%m-%d %H:%M:%f', @wholeSecond)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @wholeSecond VarChar(23) -- AnsiString
SET     @wholeSecond = '2020-02-29 17:54:55.000'

SELECT
	COUNT(*)
FROM
	[DateTimePrecisionTable] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DateTime]) < strftime('%Y-%m-%d %H:%M:%f', @wholeSecond)

