-- SqlServer.2017.MS SqlServer.2017
DECLARE @replacement NVarChar(4000) -- String
SET     @replacement = N'b'

SELECT TOP (2)
	Replace([t].[Notes], 'a', 'b'),
	Replace(CAST([t].[Notes] AS NVarChar(Max)), 'a', @replacement)
FROM
	[LongVarCharRow] [t]

