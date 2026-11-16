-- SqlCe
DECLARE @Value NVarChar(6) -- String
SET     @Value = 'Female'

SELECT
	[r].[Id]
FROM
	[ConvertedGenderRow] [r]
WHERE
	[r].[Gender] = @Value

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[Gender]
FROM
	[ConvertedGenderRow] [t1]

