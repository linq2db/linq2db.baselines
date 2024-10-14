BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
					[rec].[PersonID] IN (1, 2) AND [rec].[PersonID] NOT IN (
						SELECT
							[p].[PersonID]
						FROM
							[Person] [p]
						WHERE
							[p].[PersonID] IN (3)
					)
			) [p_1]
	) [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
					[rec].[PersonID] IN (3) AND [rec].[PersonID] NOT IN (
						SELECT
							[p].[PersonID]
						FROM
							[Person] [p]
						WHERE
							[p].[PersonID] IN (1, 2)
					)
			) [p_1]
	) [t1]

