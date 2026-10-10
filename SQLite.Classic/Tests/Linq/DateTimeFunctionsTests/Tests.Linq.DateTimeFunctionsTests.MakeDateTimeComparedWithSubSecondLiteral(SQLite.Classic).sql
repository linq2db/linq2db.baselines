-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [t1]

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', '2010-01-01 10:00:' || printf('%02d', [p].[ID] % 1) || '.000') < strftime('%Y-%m-%d %H:%M:%f', '2010-01-01 10:00:00.500')

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', '2010-01-01 10:00:' || printf('%02d', [p].[ID] % 1) || '.000') >= strftime('%Y-%m-%d %H:%M:%f', '2010-01-01 10:00:00.500')

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', '2010-01-01 10:00:' || printf('%02d', [p].[ID] % 1) || '.000') = strftime('%Y-%m-%d %H:%M:%f', '2010-01-01 10:00:00.500')

