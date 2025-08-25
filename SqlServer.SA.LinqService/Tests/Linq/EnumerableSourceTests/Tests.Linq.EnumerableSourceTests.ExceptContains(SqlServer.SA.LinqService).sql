BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), 1, 0)
FROM
	[Person] [r]

