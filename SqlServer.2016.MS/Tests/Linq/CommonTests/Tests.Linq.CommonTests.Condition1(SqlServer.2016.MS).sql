BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	CASE
		WHEN LEN([p].[FirstName] + N'.') <> 1 THEN [p].[FirstName]
		WHEN NOT ([p].[MiddleName] IS NULL OR LEN([p].[MiddleName] + N'.') = 1)
			THEN [p].[MiddleName]
		ELSE [p].[LastName]
	END
FROM
	[Person] [p]

