BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[ID],
	[d].[FirstName],
	[d].[PersonID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT TOP 1
			[entity1].[PersonID] as [ID]
		FROM
			[Person] [entity1]
	) [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] = [m_1].[ID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[entity1].[FirstName],
	[entity1].[PersonID],
	[entity1].[LastName],
	[entity1].[MiddleName],
	[entity1].[Gender]
FROM
	[Person] [entity1]

