BeforeExecute
-- Sybase.Managed Sybase
DECLARE @personId Integer -- Int32
SET     @personId = 0
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1],
				(
					SELECT
						COUNT([t2].[PersonID]) as [cond]
					FROM
						[Patient] [t2]
					WHERE
						[t2].[PersonID] = @personId AND [t2].[PersonID] NOT IN (
							SELECT
								[t3].[PersonID]
							FROM
								[Patient] [t3]
							WHERE
								[t3].[PersonID] = @personId_1
						)
				) [t4],
				(
					SELECT
						COUNT([t5].[PersonID]) as [cond]
					FROM
						[Patient] [t5]
					WHERE
						[t5].[PersonID] = @personId_1 AND [t5].[PersonID] NOT IN (
							SELECT
								[t6].[PersonID]
							FROM
								[Patient] [t6]
							WHERE
								[t6].[PersonID] = @personId
						)
				) [t7]
			WHERE
				[t4].[cond] = 0 AND [t7].[cond] = 0
		)
			THEN 1
		ELSE 0
	END

