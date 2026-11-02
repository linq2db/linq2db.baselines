-- SqlServer.2005
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	CASE
		WHEN N'A-100Жук' IN (
			SELECT
				[p].[Sku] + Coalesce(@suffix, N'')
			FROM
				[ConcatProduct] [p]
		)
			THEN 1
		ELSE 0
	END

-- SqlServer.2005
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	CASE
		WHEN N'A-100Щит' IN (
			SELECT
				[p].[Sku] + Coalesce(@suffix, N'')
			FROM
				[ConcatProduct] [p]
		)
			THEN 1
		ELSE 0
	END

