BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017

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

