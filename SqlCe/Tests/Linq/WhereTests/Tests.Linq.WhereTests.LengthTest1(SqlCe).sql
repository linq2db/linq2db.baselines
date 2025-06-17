BeforeExecute
-- SqlCe

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	Len([nm].[MiddleName]) <> 0 OR [nm].[MiddleName] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

