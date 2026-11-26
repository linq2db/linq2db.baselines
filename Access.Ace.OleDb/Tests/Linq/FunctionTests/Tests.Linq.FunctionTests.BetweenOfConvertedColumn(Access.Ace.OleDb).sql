-- Access.Ace.OleDb AccessOleDb
DECLARE @ConstantBounds VarWChar(5) -- String
SET     @ConstantBounds = '00005'
DECLARE @ConstantBounds_1 VarWChar(5) -- String
SET     @ConstantBounds_1 = '00050'
DECLARE @low VarWChar(5) -- String
SET     @low = '00005'
DECLARE @high VarWChar(5) -- String
SET     @high = '00050'
DECLARE @value VarWChar(5) -- String
SET     @value = '00042'
DECLARE @minimum BigInt -- Int64
SET     @minimum = 5
DECLARE @maximum BigInt -- Int64
SET     @maximum = 50
DECLARE @Padded VarWChar(5) -- String
SET     @Padded = '00100'
DECLARE @Padded_1 VarWChar(5) -- String
SET     @Padded_1 = '00200'

SELECT
	[r].[Id],
	[r].[Padded] BETWEEN CVar(@ConstantBounds) AND CVar(@ConstantBounds_1),
	[r].[Padded] NOT BETWEEN CVar(@low) AND CVar(@high),
	CVar(@value) BETWEEN [r].[Low] AND [r].[High],
	[r].[Elapsed] BETWEEN CVar(@minimum) AND CVar(@maximum)
FROM
	[BetweenConvertedRow] [r]
WHERE
	[r].[Padded] NOT BETWEEN @Padded AND @Padded_1

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Padded],
	[t1].[Low],
	[t1].[High],
	[t1].[Elapsed]
FROM
	[BetweenConvertedRow] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @InRange VarWChar(5) -- String
SET     @InRange = '00001'
DECLARE @InRange_1 VarWChar(5) -- String
SET     @InRange_1 = '00010'
DECLARE @Padded VarWChar(5) -- String
SET     @Padded = '00100'
DECLARE @Padded_1 VarWChar(5) -- String
SET     @Padded_1 = '00200'

SELECT
	[g_2].[Key_1],
	[g_2].[InRange] BETWEEN CVar(@InRange) AND CVar(@InRange_1)
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1],
			MAX([g_1].[Padded]) as [InRange]
		FROM
			[BetweenConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
	) [g_2]
WHERE
	[g_2].[InRange] NOT BETWEEN @Padded AND @Padded_1

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Padded],
	[t1].[Low],
	[t1].[High],
	[t1].[Elapsed]
FROM
	[BetweenConvertedRow] [t1]

