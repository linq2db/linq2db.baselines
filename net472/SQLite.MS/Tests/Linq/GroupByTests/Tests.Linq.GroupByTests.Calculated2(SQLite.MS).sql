﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[ch].[c1] || '2' as [c1]
		FROM
			(
				SELECT
					CASE
						WHEN [selectParam].[ParentID] > 2
							THEN CASE
							WHEN [selectParam].[ParentID] > 3
								THEN '1'
							ELSE '2'
						END
						ELSE '3'
					END as [c1]
				FROM
					[Child] [selectParam]
			) [ch]
		GROUP BY
			[ch].[c1]
	) [p]
WHERE
	[p].[c1] = '22'

