-- SqlServer.2008
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Upper([t].[Sku]) + Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

