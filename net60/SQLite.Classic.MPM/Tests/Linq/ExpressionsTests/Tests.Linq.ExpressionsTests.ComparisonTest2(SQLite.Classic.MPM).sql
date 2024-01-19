BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @personId  -- Int32
SET     @personId = 0
DECLARE @personId_1  -- Int32
SET     @personId_1 = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [_]
			WHERE
				(
					SELECT
						Count(*)
					FROM
						[Patient] [_1]
					WHERE
						[_1].[PersonID] = @personId AND NOT (EXISTS(
							SELECT
								*
							FROM
								[Patient] [param]
							WHERE
								[param].[PersonID] = [_1].[PersonID] AND [param].[PersonID] = @personId_1
						))
				) = 0 AND
				(
					SELECT
						Count(*)
					FROM
						[Patient] [_2]
					WHERE
						[_2].[PersonID] = @personId_1 AND NOT (EXISTS(
							SELECT
								*
							FROM
								[Patient] [param_1]
							WHERE
								[param_1].[PersonID] = [_2].[PersonID] AND [param_1].[PersonID] = @personId
						))
				) = 0
		)
			THEN 1
		ELSE 0
	END

