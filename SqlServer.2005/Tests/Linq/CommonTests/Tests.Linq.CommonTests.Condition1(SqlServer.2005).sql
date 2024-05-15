BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN [p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0
			THEN 1
		ELSE 0
	END,
	[p].[FirstName],
	CASE
		WHEN [p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0
			THEN 1
		ELSE 0
	END,
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]

