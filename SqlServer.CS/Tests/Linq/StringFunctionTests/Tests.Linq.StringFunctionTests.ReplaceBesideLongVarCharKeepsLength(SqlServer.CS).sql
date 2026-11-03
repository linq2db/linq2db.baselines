-- SqlServer.CS SqlServer.2025
DECLARE @replacement NVarChar(4000) -- String
SET     @replacement = N'b'

SELECT TOP (2)
	Replace(CAST([t].[Notes] AS NVarChar(Max)), 'a', N'Ж'),
	Replace(CAST([t].[Notes] AS NVarChar(Max)), 'a', @replacement)
FROM
	[LongVarCharRow] [t]

