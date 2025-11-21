-- SqlCe
DECLARE @personId Int -- Int32
SET     @personId = 0
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t7]
					CROSS JOIN (
						SELECT
							COUNT(*) as [Count_1]
						FROM
							[Patient] [t1]
						WHERE
							[t1].[PersonID] = @personId AND [t1].[PersonID] NOT IN (
								SELECT
									[t2].[PersonID]
								FROM
									[Patient] [t2]
								WHERE
									[t2].[PersonID] = @personId_1
							)
					) [t3]
					CROSS JOIN (
						SELECT
							COUNT(*) as [Count_1]
						FROM
							[Patient] [t4]
						WHERE
							[t4].[PersonID] = @personId_1 AND [t4].[PersonID] NOT IN (
								SELECT
									[t5].[PersonID]
								FROM
									[Patient] [t5]
								WHERE
									[t5].[PersonID] = @personId
							)
					) [t6]
			WHERE
				[t3].[Count_1] = 0 AND [t6].[Count_1] = 0
		)
			THEN 1
		ELSE 0
	END as [c1]

