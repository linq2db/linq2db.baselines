﻿BeforeExecute
-- Access AccessOleDb
DECLARE @personId Integer -- Int32
SET     @personId = 2
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 2

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
			[_3].[PersonID] = @personId_1 AND [_3].[PersonID] NOT IN (
				SELECT
					[_4].[PersonID]
				FROM
					[Patient] [_4]
				WHERE
					[_4].[PersonID] IS NULL
			)
	) = 0

