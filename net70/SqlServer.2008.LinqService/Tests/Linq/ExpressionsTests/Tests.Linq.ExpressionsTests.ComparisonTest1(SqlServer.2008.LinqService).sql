BeforeExecute
-- SqlServer.2008
DECLARE @personId Int -- Int32
SET     @personId = 2

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
						COUNT([_1].[PersonID])
					FROM
						[Patient] [_1]
					WHERE
						[_1].[PersonID] IS NULL AND [_1].[PersonID] NOT IN (
							SELECT
								[_2].[PersonID]
							FROM
								[Patient] [_2]
							WHERE
								[_2].[PersonID] = @personId
						)
				) = 0 AND
				(
					SELECT
						COUNT([_3].[PersonID])
					FROM
						[Patient] [_3]
					WHERE
						[_3].[PersonID] = @personId AND [_3].[PersonID] NOT IN (
							SELECT
								[_4].[PersonID]
							FROM
								[Patient] [_4]
							WHERE
								[_4].[PersonID] IS NULL
						)
				) = 0
		)
			THEN 1
		ELSE 0
	END

