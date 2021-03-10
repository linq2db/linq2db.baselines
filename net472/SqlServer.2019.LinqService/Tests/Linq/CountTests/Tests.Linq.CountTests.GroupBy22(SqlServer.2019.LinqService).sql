﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = 0
DECLARE @n_1 Int -- Int32
SET     @n_1 = 0

SELECT
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT
					[ch].[ParentID] + 1 as [ParentID]
				FROM
					[Child] [ch]
			) [ch_1]
		WHERE
			[ch_1].[ParentID] < 3 AND [ch_3].[ParentID] = [ch_1].[ParentID] AND
			[ch_1].[ParentID] > @n
	)
FROM
	(
		SELECT
			[ch_2].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [ch_2]
	) [ch_3]
WHERE
	[ch_3].[ParentID] > @n_1
GROUP BY
	[ch_3].[ParentID]

