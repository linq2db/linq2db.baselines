BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	(
		SELECT
			[x].[PersonID] + 1
	)
FROM
	[Person] [x]

