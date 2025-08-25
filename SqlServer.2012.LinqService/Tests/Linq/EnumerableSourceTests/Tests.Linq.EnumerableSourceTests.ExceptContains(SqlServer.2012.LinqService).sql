BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), 1, 0)
FROM
	[Person] [r]

