BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[q1].[PersonID] as [Key_1],
			COUNT(*) as [Count_1]
		FROM
			[Person] [q1]
		GROUP BY
			[q1].[PersonID]
	) [t2]
		FULL JOIN (
			SELECT
				COUNT(*) as [Count_1],
				[q2].[PersonID]
			FROM
				[Patient] [q2]
			GROUP BY
				[q2].[PersonID]
		) [t1] ON [t2].[Key_1] = [t1].[PersonID] AND [t2].[Count_1] = [t1].[Count_1]
WHERE
	[t2].[Count_1] IS NULL OR [t1].[Count_1] IS NULL

