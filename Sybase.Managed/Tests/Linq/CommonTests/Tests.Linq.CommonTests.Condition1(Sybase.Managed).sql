BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN CHAR_LENGTH([p].[FirstName]) <> 0 THEN [p].[FirstName]
		WHEN NOT ([p].[MiddleName] IS NULL OR CHAR_LENGTH([p].[MiddleName]) = 0 AND [p].[MiddleName] IS NOT NULL)
			THEN [p].[MiddleName]
		ELSE [p].[LastName]
	END
FROM
	[Person] [p]

