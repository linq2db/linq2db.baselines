-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @value VarChar(23) -- AnsiString
SET     @value = '2020-01-02 12:00:00.000'
DECLARE @value_1 VarChar(23) -- AnsiString
SET     @value_1 = '2020-01-02 12:00:00.000'

SELECT
	0,
	0,
	1,
	1,
	strftime('%Y-%m-%d %H:%M:%f', @value) >= strftime('%Y-%m-%d %H:%M:%f', [r].[Day]) AND strftime('%Y-%m-%d %H:%M:%f', @value) <= strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp]),
	Date(@value_1) >= Date([r].[Day]) AND strftime('%Y-%m-%d %H:%M:%f', @value) <= strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp]),
	CASE
		WHEN strftime('%Y-%m-%d %H:%M:%f', @value) < strftime('%Y-%m-%d %H:%M:%f', Coalesce([d].[Day], '0001-01-01'))
			THEN 'a'
		ELSE 'b'
	END
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @value VarChar(23) -- AnsiString
SET     @value = '2020-01-02 12:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @value) < strftime('%Y-%m-%d %H:%M:%f', [d].[Day])

