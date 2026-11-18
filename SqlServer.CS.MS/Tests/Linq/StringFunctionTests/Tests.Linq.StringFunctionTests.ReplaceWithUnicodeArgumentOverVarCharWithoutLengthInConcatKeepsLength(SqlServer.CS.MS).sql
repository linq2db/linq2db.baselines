-- SqlServer.CS.MS SqlServer.2025
DECLARE @replacement NVarChar(4000) -- String
SET     @replacement = N'e'

SELECT TOP (2)
	Coalesce(CAST(Replace([t].[Left], 'b', @replacement) AS NVarChar(Max)), N'') || [t].[Right],
	Coalesce(CAST(Replace([t].[Left], 'b', @replacement) AS NVarChar(Max)), N'') || Coalesce(Replace([t].[Right], 'c', @replacement), N'')
FROM
	[DbTypeOnlyVarCharRow] [t]

