BeforeExecute
-- SQLite.MS SQLite
DECLARE @personId  -- Int32
SET     @personId = 2
DECLARE @personId_1  -- Int32
SET     @personId_1 = 0

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [_],
				(
					SELECT
						COUNT([_1].[PersonID]) as [c1]
					FROM
						[Patient] [_1]
					WHERE
						[_1].[PersonID] = @personId AND [_1].[PersonID] NOT IN (
							SELECT
								[_2].[PersonID]
							FROM
								[Patient] [_2]
							WHERE
								[_2].[PersonID] = @personId_1
						)
				) [t1],
				(
					SELECT
						COUNT([_3].[PersonID]) as [c1]
					FROM
						[Patient] [_3]
					WHERE
						[_3].[PersonID] = @personId_1 AND [_3].[PersonID] NOT IN (
							SELECT
								[_4].[PersonID]
							FROM
								[Patient] [_4]
							WHERE
								[_4].[PersonID] = @personId
						)
				) [t2]
			WHERE
				[t2].[c1] = 0 AND [t1].[c1] = 0
		)
			THEN 1
		ELSE 0
	END

