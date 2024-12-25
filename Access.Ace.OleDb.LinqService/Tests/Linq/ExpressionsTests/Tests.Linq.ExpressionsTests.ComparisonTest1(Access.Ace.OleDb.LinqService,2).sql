BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @personId Integer -- Int32
SET     @personId = 0
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 2
DECLARE @personId_2 Integer -- Int32
SET     @personId_2 = 2
DECLARE @personId_3 Integer -- Int32
SET     @personId_3 = 0

SELECT
	COUNT(*) > 0
FROM
	[Person] [t1],
	(
		SELECT
			COUNT([t2].[PersonID]) as [cond]
		FROM
			[Patient] [t2]
		WHERE
			[t2].[PersonID] = @personId AND [t2].[PersonID] NOT IN (
				SELECT
					[t3].[PersonID]
				FROM
					[Patient] [t3]
				WHERE
					[t3].[PersonID] = @personId_1
			)
	) [t4],
	(
		SELECT
			COUNT([t5].[PersonID]) as [cond]
		FROM
			[Patient] [t5]
		WHERE
			[t5].[PersonID] = @personId_2 AND [t5].[PersonID] NOT IN (
				SELECT
					[t6].[PersonID]
				FROM
					[Patient] [t6]
				WHERE
					[t6].[PersonID] = @personId_3
			)
	) [t7]
WHERE
	[t4].[cond] = 0 AND [t7].[cond] = 0

