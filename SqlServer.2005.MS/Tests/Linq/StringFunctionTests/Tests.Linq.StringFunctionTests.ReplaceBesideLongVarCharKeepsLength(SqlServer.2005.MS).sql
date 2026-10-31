-- SqlServer.2005.MS SqlServer.2005
DECLARE @replacement NVarChar(4000) -- String
SET     @replacement = N'b'

SELECT TOP (2)
	Replace(CAST([t].[Notes] AS NVarChar(Max)), N'a', N'b'),
	Replace(CAST([t].[Notes] AS NVarChar(Max)), N'a', @replacement)
FROM
	[LongVarCharRow] [t]

