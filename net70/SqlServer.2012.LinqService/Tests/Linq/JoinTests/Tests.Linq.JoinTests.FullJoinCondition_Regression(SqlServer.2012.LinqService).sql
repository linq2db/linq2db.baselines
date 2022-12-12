BeforeExecute
-- SqlServer.2012

SELECT
	Count(*)
FROM
	(
		SELECT
			[q1].[Count_1] as [LeftCount],
			[t1].[Count_1] as [RightCount]
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
						[q2].[Key_1],
						[q2].[Count_1]
					FROM
						(
							SELECT
								[p_1].[PersonID] as [Key_1],
								Count(*) as [Count_1]
							FROM
								[Patient] [p_1]
							GROUP BY
								[p_1].[PersonID]
						) [q2]
				) [t1] ON [q1].[Key_1] = [t1].[Key_1] AND ([q1].[Count_1] = [t1].[Count_1] OR [q1].[Count_1] IS NULL AND [t1].[Count_1] IS NULL)
	) [q]
WHERE
	([q].[LeftCount] IS NULL OR [q].[RightCount] IS NULL)

