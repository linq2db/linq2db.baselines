-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @value NChar(1) -- StringFixedLength
SET     @value = 'M'

SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN [p].[PersonID] > 2 THEN 'M'
		ELSE 'F'
	END = @value

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

