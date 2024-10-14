BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT
			COUNT([p_1].[ID]) as [c1]
		FROM
			(
				SELECT
					[rec].[PersonID] as [ID]
				FROM
					[Person] [rec]
				WHERE
					[rec].[PersonID] IN (1, 2)
			) [p_1]
	) [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT
			COUNT([p_1].[ID]) as [c1]
		FROM
			(
				SELECT
					[rec].[PersonID] as [ID]
				FROM
					[Person] [rec]
				WHERE
					1 = 0
			) [p_1]
	) [t1]

