BeforeExecute
-- SqlServer.2005

SELECT
	(
		SELECT
			[x].[PersonID] + 1
	)
FROM
	[Person] [x]

