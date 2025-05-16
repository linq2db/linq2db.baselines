BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[s].[ID],
	[s].[FirstName]
FROM
	(
		SELECT
			CASE
				WHEN CASE
					WHEN '' = [p].[FirstName] THEN 0
					ELSE CHAR_LENGTH([p].[FirstName])
				END >= [p].[PersonID]
					THEN [p].[FirstName]
				ELSE LPAD([p].[FirstName], [p].[PersonID], '.')
			END as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> ''

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

