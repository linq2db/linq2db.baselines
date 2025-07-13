BeforeExecute
-- SqlServer.2012

SELECT
	IIF([p].[PersonID] = 1, 1, 0)
FROM
	[Person] [p]

