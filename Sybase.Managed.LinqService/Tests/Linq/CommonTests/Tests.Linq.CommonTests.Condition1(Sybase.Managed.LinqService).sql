BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN NOT ('' = [p].[FirstName] OR CHAR_LENGTH([p].[FirstName]) = 0 AND '' <> [p].[FirstName])
			THEN [p].[FirstName]
		WHEN NOT ([p].[MiddleName] IS NULL OR '' = [p].[MiddleName] OR CHAR_LENGTH([p].[MiddleName]) = 0 AND ('' <> [p].[MiddleName] OR [p].[MiddleName] IS NULL))
			THEN [p].[MiddleName]
		ELSE [p].[LastName]
	END
FROM
	[Person] [p]

