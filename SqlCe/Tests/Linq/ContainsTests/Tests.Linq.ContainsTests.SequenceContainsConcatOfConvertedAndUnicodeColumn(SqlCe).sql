-- SqlCe
SELECT TOP (2)
	Coalesce([t].[Code], '') + Coalesce([t].[Title], '')
FROM
	[PrefixedCodeWithTitle] [t]

-- SqlCe
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN @Code IN (
			SELECT
				Coalesce([t].[Code], '') + Coalesce([t].[Title], '')
			FROM
				[PrefixedCodeWithTitle] [t]
		)
			THEN 1
		ELSE 0
	END

