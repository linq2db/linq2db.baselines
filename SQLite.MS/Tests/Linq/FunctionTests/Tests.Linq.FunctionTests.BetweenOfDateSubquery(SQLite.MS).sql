-- SQLite.MS SQLite
DECLARE @low Text(23) -- Date
SET     @low = '2020-01-01 00:30:00.000'
DECLARE @high Text(23) -- Date
SET     @high = '2020-01-03 00:30:00.000'

SELECT
	CASE
		WHEN Date([t1].[maxDay]) >= Date(@low) AND Date([t1].[maxDay]) <= Date(@high)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Date([t1].[maxDay]) >= Date(@low) AND Date([t1].[maxDay]) <= Date(@high)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Date([t1].[maxDay]) < Date(@low) OR Date([t1].[maxDay]) > Date(@high)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Date([t1].[maxDay]) < Date(@low) OR Date([t1].[maxDay]) > Date(@high)
			THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			(
				SELECT
					MAX([x].[Day])
				FROM
					[BetweenDayRow] [x]
				WHERE
					[x].[Id] = [r].[Id]
			) as [maxDay]
		FROM
			[BetweenDayRow] [r]
	) [t1]

