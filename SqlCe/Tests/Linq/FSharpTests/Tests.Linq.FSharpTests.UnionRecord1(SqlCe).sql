BeforeExecute
-- SqlCe

SELECT
	[p].[PersonID] as [ID],
	[p].[MiddleName] as [iD_1],
	[p].[FirstName] as [id_2],
	[p].[LastName] as [Id_3]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
UNION
SELECT
	[p_1].[PersonID] as [ID],
	[p_1].[MiddleName] as [iD_1],
	[p_1].[FirstName] as [id_2],
	[p_1].[LastName] as [Id_3]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] = 1

