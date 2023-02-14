BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
							[_].[PersonID] IS NULL AND [_].[PersonID] NOT IN (
								SELECT
									[_1].[PersonID]
								FROM
									[Patient] [_1]
								WHERE
									[_1].[PersonID] = @personId_1
							)
					) as [cnt],
					(
						SELECT
							Count(*)
						FROM
							[Patient] [_2]
						WHERE
							[_2].[PersonID] = @personId_1 AND [_2].[PersonID] NOT IN (
								SELECT
									[_3].[PersonID]
								FROM
									[Patient] [_3]
								WHERE
									[_3].[PersonID] IS NULL
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

