BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2

SELECT
	IIF(EXISTS(
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
					[_1].[PersonID] IS NULL AND NOT EXISTS(
						SELECT
							*
						FROM
							[Patient] [_2]
						WHERE
							[_2].[PersonID] = @personId_1 AND [_2].[PersonID] = [_1].[PersonID]
					)
			) = 0 AND
			(
				SELECT
					COUNT([_3].[PersonID])
				FROM
					[Patient] [_3]
				WHERE
					[_3].[PersonID] = @personId_1 AND NOT EXISTS(
						SELECT
							*
						FROM
							[Patient] [_4]
						WHERE
							[_4].[PersonID] IS NULL AND [_4].[PersonID] = [_3].[PersonID]
					)
			) = 0
	), 1, 0)

