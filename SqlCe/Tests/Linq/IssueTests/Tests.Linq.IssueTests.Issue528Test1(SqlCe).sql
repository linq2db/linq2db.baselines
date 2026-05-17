-- SqlCe

SELECT
	[m_1].[Key_1],
	[d].[FirstName],
	[d].[PersonID] as [ID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT DISTINCT
			[t1].[FirstName] as [Key_1]
		FROM
			[Person] [t1]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[Key_1] = [d].[FirstName]

-- SqlCe

SELECT
	[t2].[Key_1],
	[t2].[Key_1] as [Key_2]
FROM
	(
		SELECT DISTINCT
			[t1].[FirstName] as [Key_1]
		FROM
			[Person] [t1]
	) [t2]

