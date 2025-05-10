BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	CASE
		WHEN Len([p].[FirstName]) <> 0 THEN [p].[FirstName]
		WHEN NOT ([p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0 AND [p].[MiddleName] IS NOT NULL)
			THEN [p].[MiddleName]
		ELSE [p].[LastName]
	END
FROM
	[Person] [p]

