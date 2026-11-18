-- SqlServer.2012
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'-'

SELECT TOP (2)
	[r].[Plain] + [r].[Conv] + Coalesce(@suffix, N'')
FROM
	[PlainAndConvertedUnicodeRow] [r]

