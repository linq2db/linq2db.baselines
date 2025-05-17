BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN CHAR_LENGTH([p].[FirstName]) = 0 THEN 1
		ELSE 0
	END
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

