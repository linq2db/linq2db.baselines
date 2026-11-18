-- SqlCe
DECLARE @dash NVarChar(1) -- String
SET     @dash = '-'

SELECT TOP (2)
	[p].[Conv] + '|' + Coalesce(@dash, '')
FROM
	[ConvertedConcatRow] [p]

