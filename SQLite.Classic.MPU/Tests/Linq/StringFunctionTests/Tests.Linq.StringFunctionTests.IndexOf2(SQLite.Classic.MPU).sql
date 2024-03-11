BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(1) -- String
SET     @p = 'e'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN 1 = 0 THEN 2
		ELSE CharIndex(@p, [p].[LastName], 3) - 1
	END = 4 AND
	[p].[PersonID] = 2

