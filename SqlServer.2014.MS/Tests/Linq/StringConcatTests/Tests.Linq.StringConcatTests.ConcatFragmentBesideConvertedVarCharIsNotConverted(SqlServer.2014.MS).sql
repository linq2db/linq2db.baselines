-- SqlServer.2014.MS SqlServer.2014
DECLARE @dash NVarChar(4000) -- String
SET     @dash = N'-'

SELECT TOP (2)
	CAST([p].[Conv] AS NVarChar(Max)) + N'|' + Coalesce(@dash, N'')
FROM
	[ConvertedConcatRow] [p]

