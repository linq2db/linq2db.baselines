BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @personId Int -- Int32
SET     @personId = 0
DECLARE @personId Int -- Int32
SET     @personId = 2
DECLARE @personId Int -- Int32
SET     @personId = 2
DECLARE @personId Int -- Int32
SET     @personId = 0

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Person] [_],
	(
		SELECT
			COUNT([_1].[PersonID]) as [c1]
		FROM
			[Patient] [_1]
		WHERE
			[_1].[PersonID] = ? AND [_1].[PersonID] NOT IN (
				SELECT
					[_2].[PersonID]
				FROM
					[Patient] [_2]
				WHERE
					[_2].[PersonID] = ?
			)
	) [t1],
	(
		SELECT
			COUNT([_3].[PersonID]) as [c1]
		FROM
			[Patient] [_3]
		WHERE
			[_3].[PersonID] = ? AND [_3].[PersonID] NOT IN (
				SELECT
					[_4].[PersonID]
				FROM
					[Patient] [_4]
				WHERE
					[_4].[PersonID] = ?
			)
	) [t2]
WHERE
	[t1].[c1] = 0 AND [t2].[c1] = 0

