-- SqlServer.2008.MS SqlServer.2008
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'-'

SELECT TOP (2)
	CAST([r].[Plain] AS NVarChar(Max)) + [r].[Conv] + Coalesce(@suffix, N'')
FROM
	[PlainAndConvertedUnicodeRow] [r]

