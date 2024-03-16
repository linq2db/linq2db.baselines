BeforeExecute
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
				[Person] [_4]
					LEFT JOIN (
						SELECT
							Count(*) as [Count_1]
						FROM
							[Patient] [_]
						WHERE
							[_].[PersonID] = @personId AND [_].[PersonID] NOT IN (
								SELECT
									[_1].[PersonID]
								FROM
									[Patient] [_1]
								WHERE
									[_1].[PersonID] = @personId_1
							)
					) [t1] ON 1=1
					LEFT JOIN (
						SELECT
							Count(*) as [Count_1]
						FROM
							[Patient] [_2]
						WHERE
							[_2].[PersonID] = @personId_1 AND [_2].[PersonID] NOT IN (
								SELECT
									[_3].[PersonID]
								FROM
									[Patient] [_3]
								WHERE
									[_3].[PersonID] = @personId
							)
					) [t2] ON 1=1
			WHERE
				[t1].[Count_1] = 0 AND [t2].[Count_1] = 0
		)
			THEN 1
		ELSE 0
	END as [c1]

