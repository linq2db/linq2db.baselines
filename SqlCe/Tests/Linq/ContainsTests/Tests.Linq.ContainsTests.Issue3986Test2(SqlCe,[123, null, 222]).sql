BeforeExecute
-- SqlCe

SELECT
	[r].[FirstName],
	[r].[PersonID] as [ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = 4 AND ([r].[MiddleName] NOT IN ('123', '222') AND [r].[MiddleName] IS NOT NULL)

