BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2
DECLARE @personId_2 Int -- Int32
SET     @personId_2 = 2

SELECT
	Count(*) > 0
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
					[_2].[PersonID] = ? AND [_2].[PersonID] = [_1].[PersonID]
			)
	) = 0 AND
	(
		SELECT
			COUNT([_3].[PersonID])
		FROM
			[Patient] [_3]
		WHERE
			[_3].[PersonID] = ? AND NOT EXISTS(
				SELECT
					*
				FROM
					[Patient] [_4]
				WHERE
					[_4].[PersonID] IS NULL AND [_4].[PersonID] = [_3].[PersonID]
			)
	) = 0

