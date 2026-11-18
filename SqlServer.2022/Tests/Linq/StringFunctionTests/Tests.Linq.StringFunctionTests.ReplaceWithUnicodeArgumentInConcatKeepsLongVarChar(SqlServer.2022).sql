-- SqlServer.2022
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Coalesce(Replace([t].[Short], 'a', @suffix), N'') + CAST([t].[Notes] AS NVarChar(Max)),
	Replace([t].[Short], 'a', N'Ж') + CAST([t].[Notes] AS NVarChar(Max)),
	Coalesce(Replace(CAST([t].[Notes] AS NVarChar(Max)), 'n', @suffix), N'') + CAST([t].[Notes2] AS NVarChar(Max)),
	Coalesce(RTRIM(Replace([t].[Short], 'a', @suffix)), '') + CAST([t].[Notes] AS NVarChar(Max))
FROM
	[ReplaceInConcatRow] [t]

