BeforeExecute
-- Access AccessOleDb
DECLARE @personId Integer -- Int32
SET     @personId = 0
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 2
DECLARE @personId_2 Integer -- Int32
SET     @personId_2 = 2
DECLARE @personId_3 Integer -- Int32
SET     @personId_3 = 0

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
			[_1].[PersonID] = @personId AND [_1].[PersonID] NOT IN (
				SELECT
					[_2].[PersonID]
				FROM
					[Patient] [_2]
				WHERE
					[_2].[PersonID] = @personId_1
			)
	) [t1],
	(
		SELECT
			COUNT([_3].[PersonID]) as [c1]
		FROM
			[Patient] [_3]
		WHERE
			[_3].[PersonID] = @personId_2 AND [_3].[PersonID] NOT IN (
				SELECT
					[_4].[PersonID]
				FROM
					[Patient] [_4]
				WHERE
					[_4].[PersonID] = @personId_3
			)
	) [t2]
WHERE
	[t1].[c1] = 0 AND [t2].[c1] = 0

