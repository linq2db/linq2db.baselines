-- SqlServer.Contained SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST(Stuff([t].[Left], 1, 1, N'') AS NVarChar(Max)) || Stuff([t].[Right], 1, 1, N'') || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.Contained SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST(IIF(LEN([t].[Left] || N'.') > 3002, [t].[Left], [t].[Left] || Replicate(N' ', 3001 - (LEN([t].[Left] || N'.') - 1))) AS NVarChar(Max)) || IIF(LEN([t].[Right] || N'.') > 3002, [t].[Right], [t].[Right] || Replicate(N' ', 3001 - (LEN([t].[Right] || N'.') - 1))) || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.Contained SqlServer.2025
SELECT TOP (2)
	CAST([t].[Notes] AS NVarChar(Max)) || Stuff([t].[Left], 1, 1, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.Contained SqlServer.2025
SELECT TOP (2)
	Replace(CAST([t].[Notes] AS NVarChar(Max)), 'a', Stuff([t].[Left], 1, 1, N''))
FROM
	[SplitVarCharRow] [t]

