BeforeExecute
-- SqlCe
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT
						[t1].[cnt],
						[t2].[cnt] as [ex],
						[_4].[FirstName],
						[_4].[PersonID],
						[_4].[LastName],
						[_4].[MiddleName],
						[_4].[Gender]
					FROM
						[Person] [_4]
							LEFT JOIN (
								SELECT
									Count(*) as [cnt]
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
							) [t1] ON 1=1
							LEFT JOIN (
								SELECT
									Count(*) as [cnt]
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
							) [t2] ON 1=1
				) [_5]
			WHERE
				[_5].[cnt] = 0 AND [_5].[ex] = 0
		)
			THEN 1
		ELSE 0
	END

