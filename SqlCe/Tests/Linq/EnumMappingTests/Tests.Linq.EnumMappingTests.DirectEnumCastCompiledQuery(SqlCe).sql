-- SqlCe
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'F'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @Gender
ORDER BY
	[p].[PersonID]

-- SqlCe
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @Gender
ORDER BY
	[p].[PersonID]

