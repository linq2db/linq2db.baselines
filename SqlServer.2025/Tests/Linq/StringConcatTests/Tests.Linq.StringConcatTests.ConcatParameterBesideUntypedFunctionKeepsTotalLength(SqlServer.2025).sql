-- SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST(Coalesce(IsNull([t].[Left], N''), N'') AS NVarChar(Max)) || Coalesce(IsNull([t].[Right], N''), N'') || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

