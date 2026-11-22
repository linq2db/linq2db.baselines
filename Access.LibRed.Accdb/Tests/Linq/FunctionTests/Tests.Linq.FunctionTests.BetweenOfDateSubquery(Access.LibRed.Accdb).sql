-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @low  -- Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high  -- Date
SET     @high = #2020-01-03 00:30:00#

SELECT
	CASE
		WHEN [t1].[InRange] BETWEEN CVar(@low) AND CVar(@high) THEN True
		ELSE False
	END,
	CASE
		WHEN [t1].[InRange] >= CVar(@low) AND [t1].[InRange] <= CVar(@high)
			THEN True
		ELSE False
	END,
	CASE
		WHEN [t1].[InRange] NOT BETWEEN CVar(@low) AND CVar(@high)
			THEN True
		ELSE False
	END,
	CASE
		WHEN [t1].[InRange] < CVar(@low) OR [t1].[InRange] > CVar(@high)
			THEN True
		ELSE False
	END
FROM
	[BetweenDayRow] [r]
		OUTER APPLY (
			SELECT
				MAX([x].[Day]) as [InRange]
			FROM
				[BetweenDayRow] [x]
			WHERE
				[x].[Id] = [r].[Id]
		) [t1]

