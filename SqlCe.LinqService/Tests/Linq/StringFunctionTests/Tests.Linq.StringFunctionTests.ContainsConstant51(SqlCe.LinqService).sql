BeforeExecute
-- SqlCe
DECLARE @ps NVarChar(3) -- String
SET     @ps = '%[%'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123[456' LIKE @ps ESCAPE '~'

