BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
		WHEN CASE
			WHEN [p].[FirstName] IS NULL
				THEN NULL
			ELSE [p].[FirstName] LIKE 'Jo%' ESCAPE '~'
		END IS NULL
			THEN 0
		ELSE CASE
			WHEN [p].[FirstName] IS NULL
				THEN NULL
			ELSE [p].[FirstName] LIKE 'Jo%' ESCAPE '~'
		END
	END = 1

