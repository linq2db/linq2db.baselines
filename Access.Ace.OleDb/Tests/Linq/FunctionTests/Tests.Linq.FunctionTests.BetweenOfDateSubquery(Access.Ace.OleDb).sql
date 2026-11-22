-- Access.Ace.OleDb AccessOleDb
DECLARE @low DBDate -- Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high DBDate -- Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low_1 DBDate -- Date
SET     @low_1 = #2020-01-01 00:30:00#
DECLARE @high_1 DBDate -- Date
SET     @high_1 = #2020-01-03 00:30:00#
DECLARE @low_2 DBDate -- Date
SET     @low_2 = #2020-01-01 00:30:00#
DECLARE @high_2 DBDate -- Date
SET     @high_2 = #2020-01-03 00:30:00#
DECLARE @low_3 DBDate -- Date
SET     @low_3 = #2020-01-01 00:30:00#
DECLARE @high_3 DBDate -- Date
SET     @high_3 = #2020-01-03 00:30:00#

SELECT
	IIF([t1].[InRange] BETWEEN CVar(@low) AND CVar(@high), True, False),
	IIF([t1].[InRange] >= CVar(@low_1) AND [t1].[InRange] <= CVar(@high_1), True, False),
	IIF([t1].[InRange] NOT BETWEEN CVar(@low_2) AND CVar(@high_2), True, False),
	IIF([t1].[InRange] < CVar(@low_3) OR [t1].[InRange] > CVar(@high_3), True, False)
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

