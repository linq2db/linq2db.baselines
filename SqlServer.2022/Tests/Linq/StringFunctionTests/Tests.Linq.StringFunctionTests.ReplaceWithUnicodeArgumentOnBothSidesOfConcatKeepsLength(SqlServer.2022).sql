-- SqlServer.2022
DECLARE @replacement NVarChar(4000) -- String
SET     @replacement = N'e'
DECLARE @other NVarChar(4000) -- String
SET     @other = N'f'
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Coalesce(CAST(Replace([t].[Left], 'b', @replacement) AS NVarChar(Max)), N'') + Coalesce(Replace([t].[Right], 'c', @replacement), N''),
	Coalesce(CAST(Replace([t].[NLeft], 'b', @replacement) AS NVarChar(Max)), N'') + Coalesce(Replace([t].[NRight], 'c', @replacement), N''),
	Coalesce(CAST(Replace(Replace([t].[Left], 'b', @replacement), 'e', @other) AS NVarChar(Max)), N'') + Coalesce(Replace(Replace([t].[Right], 'c', @replacement), 'e', @other), N''),
	Coalesce(CAST(RTRIM(Replace([t].[Left], 'b', @replacement)) AS NVarChar(Max)), N'') + Coalesce(RTRIM(Replace([t].[Right], 'c', @replacement)), ''),
	CAST(Replace(Upper([t].[Left]), N'B', N'Ж') AS NVarChar(Max)) + Replace(Upper([t].[Right]), N'C', N'Ж'),
	CAST(Replace([t].[Left], 'b', N'Ж') AS NVarChar(Max)) + Replace([t].[Right], 'c', N'Ж'),
	Coalesce(CAST(Replace([t].[Left], 'b', @replacement) AS NVarChar(Max)), N'') + Coalesce(Replace([t].[Right], 'c', @replacement), N'') + Coalesce(@suffix, N'')
FROM
	[SplitReplaceRow] [t]

-- SqlServer.2022
DECLARE @replacement NVarChar(4000) -- String
SET     @replacement = N'e'

SELECT TOP (2)
	Coalesce(CAST([t1].[L] AS NVarChar(Max)), N'') + Coalesce([t1].[R], N'')
FROM
	(
		SELECT DISTINCT
			Replace([t].[Left], 'b', @replacement) as [L],
			Replace([t].[Right], 'c', @replacement) as [R]
		FROM
			[SplitReplaceRow] [t]
	) [t1]

-- SqlServer.2022
DECLARE @replacement NVarChar(4000) -- String
SET     @replacement = N'e'
DECLARE @expected NVarChar(6000) -- String
SET     @expected = N'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee'
-- value above truncated for logging

SELECT
	COUNT(*)
FROM
	[SplitReplaceRow] [t]
WHERE
	(Coalesce(CAST(Replace([t].[Left], 'b', @replacement) AS NVarChar(Max)), N'') + Coalesce(Replace([t].[Right], 'c', @replacement), N'')) = @expected

