BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	NEXT VALUE FOR dbo.TestSequence OVER (ORDER BY [p].[PersonID], [p].[FirstName] DESC),
	[p].[PersonID]
FROM
	[Person] [p]

