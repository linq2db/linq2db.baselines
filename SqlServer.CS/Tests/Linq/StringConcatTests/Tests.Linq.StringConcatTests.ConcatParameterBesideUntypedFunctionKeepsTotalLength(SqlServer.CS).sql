-- SqlServer.CS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Coalesce(CAST(IsNull([t].[Left], N'') AS NVarChar(Max)), N'') || Coalesce(IsNull([t].[Right], N''), N'') || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.CS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Coalesce(CAST(IsNull([t].[Left], N'') AS NVarChar(Max)), N'') || Coalesce(IsNull([t].[Right], N''), N'') || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.CS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Coalesce(@suffix, N'') || Coalesce(CAST(IsNull([t].[Notes], N'') AS NVarChar(Max)), N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.CS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Coalesce(@suffix, N'') || Coalesce(CAST(IsNull([t].[Notes], Coalesce(@suffix, N'') || CAST([t].[Notes] AS NVarChar(Max))) AS NVarChar(Max)), N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.CS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Coalesce(@suffix, N'') || Coalesce(CAST(IsNull([t].[Notes], (Coalesce(@suffix, N'') || CAST([t].[Notes] AS NVarChar(Max)))) AS NVarChar(Max)), N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.CS SqlServer.2025
SELECT TOP (2)
	[t].[Title] || CAST(Stuff([t].[Left], 1, 0, [t].[Right]) AS NVarChar(Max))
FROM
	[SplitVarCharRow] [t]

-- SqlServer.CS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST(Space([t].[Id] * 5000) AS NVarChar(Max)) || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

