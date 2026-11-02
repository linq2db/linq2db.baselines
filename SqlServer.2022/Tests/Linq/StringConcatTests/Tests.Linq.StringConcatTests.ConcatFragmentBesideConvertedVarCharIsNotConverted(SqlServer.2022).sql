-- SqlServer.2022
DECLARE @dash NVarChar(4000) -- String
SET     @dash = N'-'

SELECT TOP (2)
	CAST([p].[Conv] AS NVarChar(Max)) + N'|' + Coalesce(@dash, N'')
FROM
	[ConvertedConcatRow] [p]

