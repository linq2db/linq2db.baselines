-- Access.Jet.Odbc AccessODBC
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#

SELECT
	IIF([t1].[InRange] BETWEEN CVar(?) AND CVar(?), True, False),
	IIF([t1].[InRange] >= CVar(?) AND [t1].[InRange] <= CVar(?), True, False),
	IIF([t1].[InRange] NOT BETWEEN CVar(?) AND CVar(?), True, False),
	IIF([t1].[InRange] < CVar(?) OR [t1].[InRange] > CVar(?), True, False)
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

