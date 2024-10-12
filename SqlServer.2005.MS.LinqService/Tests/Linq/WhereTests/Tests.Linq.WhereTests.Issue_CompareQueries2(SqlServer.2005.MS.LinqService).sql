BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[t2].[c1]
FROM
	(
		SELECT
			COUNT([t1].[ID]) as [c1]
		FROM
			(
				SELECT
					[p].[PersonID] as [ID]
				FROM
					[Person] [p]
				WHERE
					[p].[PersonID] IN (1, 2)
			) [t1]
		WHERE
			[t1].[ID] NOT IN (
				SELECT
					[p_1].[PersonID]
				FROM
					[Person] [p_1]
				WHERE
					[p_1].[PersonID] IN (3)
			)
	) [t2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[t2].[c1]
FROM
	(
		SELECT
			COUNT([t1].[ID]) as [c1]
		FROM
			(
				SELECT
					[p].[PersonID] as [ID]
				FROM
					[Person] [p]
				WHERE
					[p].[PersonID] IN (3)
			) [t1]
		WHERE
			[t1].[ID] NOT IN (
				SELECT
					[p_1].[PersonID]
				FROM
					[Person] [p_1]
				WHERE
					[p_1].[PersonID] IN (1, 2)
			)
	) [t2]

