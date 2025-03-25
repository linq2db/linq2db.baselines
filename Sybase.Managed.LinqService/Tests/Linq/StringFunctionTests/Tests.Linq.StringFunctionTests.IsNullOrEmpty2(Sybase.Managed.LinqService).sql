BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN '' = [p].[FirstName] OR CHAR_LENGTH([p].[FirstName]) = 0 AND '' <> [p].[FirstName]
			THEN 1
		ELSE 0
	END
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

