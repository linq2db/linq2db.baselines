-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @high  -- DateTime
SET     @high = #2020-01-02 06:00:00#
DECLARE @value_1  -- Date
SET     @value_1 = #2020-01-02 12:00:00#
DECLARE @later  -- DateTime
SET     @later = #2020-01-03#

SELECT
	CVar(@value) BETWEEN [r].[Day] AND CVar(@high),
	False,
	CVar(@value) NOT BETWEEN [r].[Day] AND CVar(@high),
	True,
	CVar(@value) BETWEEN [r].[Day] AND [r].[Stamp],
	CVar(@value_1) >= [r].[Day] AND CVar(@value) <= [r].[Stamp],
	CASE
		WHEN CVar(@value) NOT BETWEEN CASE
			WHEN [d].[Day] IS NULL THEN #0100-01-01#
			ELSE [d].[Day]
		END AND CVar(@later)
			THEN 'a'
		ELSE 'b'
	END
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON ([d].[Id] = [r].[Id] - 1)
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @later  -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON ([d].[Id] = [r].[Id] - 1)
WHERE
	@value NOT BETWEEN [d].[Day] AND @later

