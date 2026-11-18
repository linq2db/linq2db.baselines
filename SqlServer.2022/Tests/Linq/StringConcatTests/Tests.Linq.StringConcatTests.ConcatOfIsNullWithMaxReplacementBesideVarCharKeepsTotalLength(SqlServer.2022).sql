-- SqlServer.2022
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Coalesce(CAST(IsNull([t].[Unicode], [t].[Doc]) AS NVarChar(Max)), N'') + [t].[Left] + [t].[Right] + Coalesce(@suffix, N'')
FROM
	[MaxArgumentFunctionRow] [t]

