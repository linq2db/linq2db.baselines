BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT
			COUNT([p].[PersonID]) as [c1]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (1, 2)
	) [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT
			COUNT([p].[PersonID]) as [c1]
		FROM
			[Person] [p]
		WHERE
			1 = 0
	) [t1]

