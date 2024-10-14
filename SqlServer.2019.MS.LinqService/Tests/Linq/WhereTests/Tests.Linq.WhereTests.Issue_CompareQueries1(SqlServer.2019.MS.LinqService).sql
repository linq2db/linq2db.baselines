BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT
			COUNT([p].[ID]) as [c1]
		FROM
			(
				SELECT
					[rec].[PersonID] as [ID]
				FROM
					[Person] [rec]
				WHERE
					[rec].[PersonID] IN (1, 2)
			) [p]
	) [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT
			COUNT([p].[ID]) as [c1]
		FROM
			(
				SELECT
					[rec].[PersonID] as [ID]
				FROM
					[Person] [rec]
				WHERE
					1 = 0
			) [p]
	) [t1]

