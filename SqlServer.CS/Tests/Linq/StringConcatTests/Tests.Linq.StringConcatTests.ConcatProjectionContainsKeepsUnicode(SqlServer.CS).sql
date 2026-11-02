-- SqlServer.CS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	IIF(N'A-100Жук' IN (
		SELECT
			CAST([p].[Sku] AS NVarChar(Max)) || Coalesce(@suffix, N'')
		FROM
			[ConcatProduct] [p]
	), 1, 0)

-- SqlServer.CS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	IIF(N'A-100Щит' IN (
		SELECT
			CAST([p].[Sku] AS NVarChar(Max)) || Coalesce(@suffix, N'')
		FROM
			[ConcatProduct] [p]
	), 1, 0)

