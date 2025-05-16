BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[nm].[MiddleName]
FROM
	(
		SELECT
			CASE
				WHEN '' = [p].[MiddleName] THEN 0
				ELSE CHAR_LENGTH([p].[MiddleName])
			END as [Length_1],
			[p].[MiddleName]
		FROM
			[Person] [p]
	) [nm]
WHERE
	[nm].[Length_1] <> 0 OR [nm].[Length_1] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

