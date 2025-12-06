-- SqlServer.2008.MS SqlServer.2008

WITH [CTE_1] ([PersonID])
AS
(
	SELECT
		[a_Patient].[PersonID]
	FROM
		[Person] [s]
			LEFT JOIN [Patient] [a_Patient] ON [s].[PersonID] = [a_Patient].[PersonID]
)
SELECT
	[m_1].[Item1],
	[d].[FirstName],
	[d].[PersonID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT DISTINCT
			[t1].[PersonID] as [Item1]
		FROM
			[CTE_1] [t1]
				INNER JOIN [Patient] [p] ON [t1].[PersonID] = [p].[PersonID]
	) [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] = [m_1].[Item1]

-- SqlServer.2008.MS SqlServer.2008

WITH [CTE_1] ([PersonID])
AS
(
	SELECT
		[a_Patient].[PersonID]
	FROM
		[Person] [s]
			LEFT JOIN [Patient] [a_Patient] ON [s].[PersonID] = [a_Patient].[PersonID]
)
SELECT
	[r].[PersonID]
FROM
	[CTE_1] [r]
		INNER JOIN [Patient] [p] ON [r].[PersonID] = [p].[PersonID]

