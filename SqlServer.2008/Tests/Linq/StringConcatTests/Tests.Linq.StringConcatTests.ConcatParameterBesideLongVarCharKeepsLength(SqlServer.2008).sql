-- SqlServer.2008
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST([t].[Notes] AS NVarChar(Max)) + Coalesce(@suffix, N'')
FROM
	[LongVarCharRow] [t]

