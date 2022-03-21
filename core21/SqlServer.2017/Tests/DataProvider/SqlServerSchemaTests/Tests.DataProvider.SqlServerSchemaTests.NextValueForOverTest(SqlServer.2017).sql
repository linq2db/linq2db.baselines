BeforeExecute
-- SqlServer.2017

SELECT
	NEXT VALUE FOR dbo.TestSequence OVER (ORDER BY [p].[PersonID], [p].[FirstName] DESC),
	[p].[PersonID]
FROM
	[Person] [p]

