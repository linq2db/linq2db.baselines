-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @low VarChar(23) -- AnsiString
SET     @low = '2020-01-01 00:30:00.000'
DECLARE @high VarChar(23) -- AnsiString
SET     @high = '2020-01-03 00:30:00.000'

SELECT
	CASE
		WHEN Date([t1].[InRange]) >= Date(@low) AND Date([t1].[InRange]) <= Date(@high)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Date([t1].[InRange]) >= Date(@low) AND Date([t1].[InRange]) <= Date(@high)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT (Date([t1].[InRange]) >= Date(@low) AND Date([t1].[InRange]) <= Date(@high))
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Date([t1].[InRange]) < Date(@low) OR Date([t1].[InRange]) > Date(@high)
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
			) as [InRange]
		FROM
			[BetweenDayRow] [r]
	) [t1]

