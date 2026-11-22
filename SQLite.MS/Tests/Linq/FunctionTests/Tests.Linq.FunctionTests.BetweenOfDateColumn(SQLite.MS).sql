-- SQLite.MS SQLite
DECLARE @low Text(23) -- Date
SET     @low = '2020-01-01 00:30:00.000'
DECLARE @high Text(23) -- Date
SET     @high = '2020-01-03 00:30:00.000'
DECLARE @low_1 Text(23) -- DateTime
SET     @low_1 = '2020-01-01 00:30:00.000'
DECLARE @high_1 Text(23) -- DateTime
SET     @high_1 = '2020-01-03 00:30:00.000'

SELECT
	Date([r].[Day]) >= Date('2020-01-01') AND Date([r].[Day]) <= Date('2020-01-03'),
	Date([r].[Day]) >= Date('2020-01-01') AND Date([r].[Day]) <= Date('2020-01-03'),
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[Other], [r].[Day])) >= strftime('%Y-%m-%d %H:%M:%f', '2020-01-01 00:30:00.000') AND strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[Other], [r].[Day])) <= strftime('%Y-%m-%d %H:%M:%f', '2020-01-03 00:30:00.000'),
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[Other], [r].[Day])) >= strftime('%Y-%m-%d %H:%M:%f', '2020-01-01 00:30:00.000') AND strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[Other], [r].[Day])) <= strftime('%Y-%m-%d %H:%M:%f', '2020-01-03 00:30:00.000'),
	Date([r].[Day]) >= Date(@low) AND Date([r].[Day]) <= Date(@high),
	Date([r].[Day]) >= Date(@low) AND Date([r].[Day]) <= Date(@high),
	Date(Coalesce([d].[Day], '0001-01-01')) >= Date('2020-01-01') AND Date(Coalesce([d].[Day], '0001-01-01')) <= Date('2020-01-03'),
	Date(Coalesce([d].[Day], '0001-01-01')) >= Date('2020-01-01') AND Date(Coalesce([d].[Day], '0001-01-01')) <= Date('2020-01-03'),
	NOT (Date([r].[Day]) >= Date(@low) AND Date([r].[Day]) <= Date(@high)),
	Date([r].[Day]) < Date(@low) OR Date([r].[Day]) > Date(@high),
	NOT (Date([r].[Day]) >= Date('2020-01-01') AND Date([r].[Day]) <= Date('2020-01-03')),
	Date([r].[Day]) < Date('2020-01-01') OR Date([r].[Day]) > Date('2020-01-03'),
	NOT (Date(Coalesce([d].[Day], '0001-01-01')) >= Date('2020-01-01') AND Date(Coalesce([d].[Day], '0001-01-01')) <= Date('2020-01-03')),
	Date(Coalesce([d].[Day], '0001-01-01')) < Date('2020-01-01') OR Date(Coalesce([d].[Day], '0001-01-01')) > Date('2020-01-03'),
	strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp]) >= strftime('%Y-%m-%d %H:%M:%f', @low_1) AND strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp]) <= strftime('%Y-%m-%d %H:%M:%f', @high_1),
	strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp]) >= strftime('%Y-%m-%d %H:%M:%f', @low_1) AND strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp]) <= strftime('%Y-%m-%d %H:%M:%f', @high_1)
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1

-- SQLite.MS SQLite
DECLARE @low Text(23) -- Date
SET     @low = '2020-01-01 00:30:00.000'
DECLARE @high Text(23) -- Date
SET     @high = '2020-01-03 00:30:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	Date([r].[Day]) >= Date(@low) AND Date([r].[Day]) <= Date(@high)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @low Text(23) -- Date
SET     @low = '2020-01-01 00:30:00.000'
DECLARE @high Text(23) -- Date
SET     @high = '2020-01-03 00:30:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	Date([r].[Day]) >= Date(@low) AND Date([r].[Day]) <= Date(@high)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	NOT (Date([r].[Day]) >= Date('2020-01-01') AND Date([r].[Day]) <= Date('2020-01-03'))
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	Date([r].[Day]) < Date('2020-01-01') OR Date([r].[Day]) > Date('2020-01-03')
ORDER BY
	[r].[Id]

