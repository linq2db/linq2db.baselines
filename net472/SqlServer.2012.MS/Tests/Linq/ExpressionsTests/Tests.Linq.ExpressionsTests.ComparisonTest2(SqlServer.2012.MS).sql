BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					(
						SELECT
							Count(*)
						FROM
							[Patient] [_]
						WHERE
							[_].[PersonID] IS NULL AND NOT EXISTS(
								SELECT
									*
								FROM
									[Patient] [_1]
								WHERE
									[_1].[PersonID] = @personId_1 AND [_1].[PersonID] = [_].[PersonID]
							)
					) as [cnt],
					(
						SELECT
							Count(*)
						FROM
							[Patient] [_2]
						WHERE
							[_2].[PersonID] = @personId_1 AND NOT EXISTS(
								SELECT
									*
								FROM
									[Patient] [_3]
								WHERE
									[_3].[PersonID] IS NULL AND [_3].[PersonID] = [_2].[PersonID]
							)
					) as [ex],
					[_4].[FirstName],
					[_4].[PersonID],
					[_4].[LastName],
					[_4].[MiddleName],
					[_4].[Gender]
				FROM
					[Person] [_4]
			) [_5]
		WHERE
			[_5].[cnt] = 0 AND [_5].[ex] = 0
	), 1, 0)

