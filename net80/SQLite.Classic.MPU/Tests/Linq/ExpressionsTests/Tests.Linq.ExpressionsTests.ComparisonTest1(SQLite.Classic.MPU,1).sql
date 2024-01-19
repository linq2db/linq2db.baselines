BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
				[Person] [_2]
					CROSS JOIN (
						SELECT
							COUNT([_].[PersonID]) as [c1]
						FROM
							[Patient] [_]
						WHERE
							[_].[PersonID] = @personId AND NOT (EXISTS(
								SELECT
									*
								FROM
									[Patient] [param]
								WHERE
									[param].[PersonID] = [_].[PersonID] AND [param].[PersonID] = @personId_1
							))
					) [t1]
					CROSS JOIN (
						SELECT
							COUNT([_1].[PersonID]) as [c1]
						FROM
							[Patient] [_1]
						WHERE
							[_1].[PersonID] = @personId_1 AND NOT (EXISTS(
								SELECT
									*
								FROM
									[Patient] [param_1]
								WHERE
									[param_1].[PersonID] = [_1].[PersonID] AND [param_1].[PersonID] = @personId
							))
					) [t2]
			WHERE
				[t1].[c1] = 0 AND [t2].[c1] = 0
		)
			THEN 1
		ELSE 0
	END

