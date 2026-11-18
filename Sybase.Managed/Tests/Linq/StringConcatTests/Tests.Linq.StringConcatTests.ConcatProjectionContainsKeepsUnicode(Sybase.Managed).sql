-- Sybase.Managed Sybase
DECLARE @suffix UniVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	CASE
		WHEN 'A-100Жук' IN (
			SELECT
				[p].[Sku] || Coalesce(@suffix, '')
			FROM
				[ConcatProduct] [p]
		)
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase
DECLARE @suffix UniVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	CASE
		WHEN 'A-100Щит' IN (
			SELECT
				[p].[Sku] || Coalesce(@suffix, '')
			FROM
				[ConcatProduct] [p]
		)
			THEN 1
		ELSE 0
	END

