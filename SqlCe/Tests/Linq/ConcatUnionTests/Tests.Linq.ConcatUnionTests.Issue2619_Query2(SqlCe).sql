-- SqlCe

SELECT
	[item_1].[FirstName],
	[item_1].[PersonID] as [ID],
	[item_1].[LastName],
	[item_1].[MiddleName],
	[item_1].[Gender]
FROM
	[Person] [item_1]
UNION
SELECT
	[item_2].[FirstName],
	[item_2].[PersonID] as [ID],
	[item_2].[LastName],
	[item_2].[MiddleName],
	[item_2].[Gender]
FROM
	[Person] [item_2]

