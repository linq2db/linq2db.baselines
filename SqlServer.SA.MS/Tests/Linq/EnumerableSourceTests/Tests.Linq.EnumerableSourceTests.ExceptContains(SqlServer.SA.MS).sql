BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), 1, 0)
FROM
	[Person] [r]

