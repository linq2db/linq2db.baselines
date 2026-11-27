-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @low  -- Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high  -- Date
SET     @high = #2020-01-03 00:30:00#

SELECT
	CASE
		WHEN [t1].[maxDay] BETWEEN CVar(@low) AND CVar(@high) THEN True
		ELSE False
	END,
	CASE
		WHEN [t1].[maxDay] >= CVar(@low) AND [t1].[maxDay] <= CVar(@high)
			THEN True
		ELSE False
	END,
	CASE
		WHEN [t1].[maxDay] NOT BETWEEN CVar(@low) AND CVar(@high)
			THEN True
		ELSE False
	END,
	CASE
		WHEN [t1].[maxDay] < CVar(@low) OR [t1].[maxDay] > CVar(@high)
			THEN True
		ELSE False
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

