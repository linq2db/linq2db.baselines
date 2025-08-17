BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t4].[Count_1],
	[t3].[Count_1]
FROM
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			(
				SELECT TOP (@take)
					*
				FROM
					[Person] [t1]
			) [a1]
	) [t4]
		FULL JOIN (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT
						NULL as [Key_1]
					FROM
						[Person] [t2]
					WHERE
						1 = 0
				) [a2]
			GROUP BY
				[a2].[Key_1]
		) [t3] ON [t4].[Count_1] = [t3].[Count_1]
WHERE
	[t4].[Count_1] IS NULL OR [t3].[Count_1] IS NULL

