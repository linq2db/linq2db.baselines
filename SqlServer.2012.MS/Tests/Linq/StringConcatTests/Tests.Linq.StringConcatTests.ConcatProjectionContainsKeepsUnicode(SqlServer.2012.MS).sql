-- SqlServer.2012.MS SqlServer.2012
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	IIF(N'A-100Жук' IN (
		SELECT
			[p].[Sku] + Coalesce(@suffix, N'')
		FROM
			[ConcatProduct] [p]
	), 1, 0)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	IIF(N'A-100Щит' IN (
		SELECT
			[p].[Sku] + Coalesce(@suffix, N'')
		FROM
			[ConcatProduct] [p]
	), 1, 0)

