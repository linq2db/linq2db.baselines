BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN([p].[FirstName] + '.') <> 1 THEN [p].[FirstName]
		WHEN NOT ([p].[MiddleName] IS NULL OR LEN([p].[MiddleName] + '.') = 1 AND [p].[MiddleName] IS NOT NULL)
			THEN [p].[MiddleName]
		ELSE [p].[LastName]
	END as [c1]
FROM
	[Person] [p]

