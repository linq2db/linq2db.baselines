-- SqlServer.2016
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST([t].[Left] + [t].[Right] AS NVarChar(Max)) + Coalesce(@suffix, N'')
FROM
	[DbTypeVarCharRow] [t]

