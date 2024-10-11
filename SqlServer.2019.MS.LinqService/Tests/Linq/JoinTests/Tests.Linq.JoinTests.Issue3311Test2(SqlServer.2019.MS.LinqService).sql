BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	(
		SELECT
			[x].[PersonID] + 1
	)
FROM
	[Person] [x]

