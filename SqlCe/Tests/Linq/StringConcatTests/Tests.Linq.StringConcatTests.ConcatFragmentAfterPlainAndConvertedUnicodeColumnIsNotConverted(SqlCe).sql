-- SqlCe
DECLARE @suffix NVarChar(1) -- String
SET     @suffix = '-'

SELECT TOP (2)
	[r].[Plain] + [r].[Conv] + Coalesce(@suffix, '')
FROM
	[PlainAndConvertedUnicodeRow] [r]

