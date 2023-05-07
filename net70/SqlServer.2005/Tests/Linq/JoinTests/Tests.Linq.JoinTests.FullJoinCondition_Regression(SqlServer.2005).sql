BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	(
		SELECT
			[p].[PersonID] as [Key_1],
			Count(*) as [Count_1]
		FROM
			[Person] [p]
		GROUP BY
			[p].[PersonID]
	) [q1]
		FULL JOIN (
			SELECT
				[p_1].[PersonID] as [Key_1],
				Count(*) as [Count_1]
			FROM
				[Patient] [p_1]
			GROUP BY
				[p_1].[PersonID]
		) [q2] ON [q1].[Key_1] = [q2].[Key_1] AND ([q1].[Count_1] = [q2].[Count_1] OR [q1].[Count_1] IS NULL AND [q2].[Count_1] IS NULL)
WHERE
	([q1].[Count_1] IS NULL OR [q2].[Count_1] IS NULL)

