BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @personId Int -- Int32
SET     @personId = 0
DECLARE @personId Int -- Int32
SET     @personId = 2
DECLARE @personId Int -- Int32
SET     @personId = 2
DECLARE @personId Int -- Int32
SET     @personId = 0

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Person] [t1],
	(
		SELECT
			COUNT([t2].[PersonID]) as [c1]
		FROM
			[Patient] [t2]
		WHERE
			[t2].[PersonID] = ? AND [t2].[PersonID] NOT IN (
				SELECT
					[t3].[PersonID]
				FROM
					[Patient] [t3]
				WHERE
					[t3].[PersonID] = ?
			)
	) [t4],
	(
		SELECT
			COUNT([t5].[PersonID]) as [c1]
		FROM
			[Patient] [t5]
		WHERE
			[t5].[PersonID] = ? AND [t5].[PersonID] NOT IN (
				SELECT
					[t6].[PersonID]
				FROM
					[Patient] [t6]
				WHERE
					[t6].[PersonID] = ?
			)
	) [t7]
WHERE
	[t4].[c1] = 0 AND [t7].[c1] = 0

