-- SqlServer.2012
DECLARE @dash NVarChar(4000) -- String
SET     @dash = N'-'

SELECT TOP (2)
	[p].[Conv] + N'|' + Coalesce(@dash, N'')
FROM
	[ConvertedConcatRow] [p]

