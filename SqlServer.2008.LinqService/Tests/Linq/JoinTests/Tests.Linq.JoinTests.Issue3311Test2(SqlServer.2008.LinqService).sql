BeforeExecute
-- SqlServer.2008

SELECT
	(
		SELECT
			[x].[PersonID] + 1
	)
FROM
	[Person] [x]

