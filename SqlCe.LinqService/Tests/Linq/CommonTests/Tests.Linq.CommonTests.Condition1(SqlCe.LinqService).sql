BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0
			THEN 1
		ELSE 0
	END as [c1],
	[p].[FirstName],
	CASE
		WHEN [p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0
			THEN 1
		ELSE 0
	END as [c2],
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]

