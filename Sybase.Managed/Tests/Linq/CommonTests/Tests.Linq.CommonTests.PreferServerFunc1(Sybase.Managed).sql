BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN '' = [p].[FirstName] THEN 0
		ELSE CHAR_LENGTH([p].[FirstName])
	END
FROM
	[Person] [p]

