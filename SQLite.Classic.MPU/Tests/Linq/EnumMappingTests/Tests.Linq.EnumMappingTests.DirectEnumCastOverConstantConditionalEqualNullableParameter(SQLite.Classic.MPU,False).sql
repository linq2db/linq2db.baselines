-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	@gender = CASE
		WHEN [p].[PersonID] > 2 THEN 'M'
		ELSE 'F'
	END

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

