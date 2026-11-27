-- SqlServer.2005
DECLARE @ConstantBounds NVarChar(5) -- String
SET     @ConstantBounds = N'00005'
DECLARE @ConstantBounds_1 NVarChar(5) -- String
SET     @ConstantBounds_1 = N'00050'
DECLARE @low NVarChar(5) -- String
SET     @low = N'00005'
DECLARE @high NVarChar(5) -- String
SET     @high = N'00050'
DECLARE @value NVarChar(5) -- String
SET     @value = N'00042'
DECLARE @minimum BigInt -- Int64
SET     @minimum = 5
DECLARE @maximum BigInt -- Int64
SET     @maximum = 50
DECLARE @Padded NVarChar(5) -- String
SET     @Padded = N'00100'
DECLARE @Padded_1 NVarChar(5) -- String
SET     @Padded_1 = N'00200'

SELECT
	[r].[Id],
	CASE
		WHEN [r].[Padded] BETWEEN @ConstantBounds AND @ConstantBounds_1
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Padded] NOT BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN @value BETWEEN [r].[Low] AND [r].[High] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Elapsed] BETWEEN @minimum AND @maximum THEN 1
		ELSE 0
	END
FROM
	[BetweenConvertedRow] [r]
WHERE
	[r].[Padded] NOT BETWEEN @Padded AND @Padded_1

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Padded],
	[t1].[Low],
	[t1].[High],
	[t1].[Elapsed]
FROM
	[BetweenConvertedRow] [t1]

-- SqlServer.2005
DECLARE @InRange NVarChar(5) -- String
SET     @InRange = N'00001'
DECLARE @InRange_1 NVarChar(5) -- String
SET     @InRange_1 = N'00010'
DECLARE @Padded NVarChar(5) -- String
SET     @Padded = N'00100'
DECLARE @Padded_1 NVarChar(5) -- String
SET     @Padded_1 = N'00200'

SELECT
	[g_2].[Key_1],
	CASE
		WHEN [g_2].[InRange] BETWEEN @InRange AND @InRange_1 THEN 1
		ELSE 0
	END
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

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Padded],
	[t1].[Low],
	[t1].[High],
	[t1].[Elapsed]
FROM
	[BetweenConvertedRow] [t1]

