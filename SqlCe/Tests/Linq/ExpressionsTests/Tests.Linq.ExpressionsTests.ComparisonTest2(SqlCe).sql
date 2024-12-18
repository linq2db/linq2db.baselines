﻿BeforeExecute
-- SqlCe
DECLARE @personId Int -- Int32
SET     @personId = 0
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t7]
					LEFT JOIN (
						SELECT
							COUNT(*) as [COUNT_1]
						FROM
							[Patient] [t1]
						WHERE
							[t1].[PersonID] = @personId AND [t1].[PersonID] NOT IN (
								SELECT
									[t2].[PersonID]
								FROM
									[Patient] [t2]
								WHERE
									[t2].[PersonID] = @personId_1
							)
					) [t3] ON 1=1
					LEFT JOIN (
						SELECT
							COUNT(*) as [COUNT_1]
						FROM
							[Patient] [t4]
						WHERE
							[t4].[PersonID] = @personId_1 AND [t4].[PersonID] NOT IN (
								SELECT
									[t5].[PersonID]
								FROM
									[Patient] [t5]
								WHERE
									[t5].[PersonID] = @personId
							)
					) [t6] ON 1=1
			WHERE
				[t3].[COUNT_1] = 0 AND
				[t3].[COUNT_1] IS NOT NULL AND
				[t6].[COUNT_1] = 0 AND
				[t6].[COUNT_1] IS NOT NULL
		)
			THEN 1
		ELSE 0
	END as [c1]

