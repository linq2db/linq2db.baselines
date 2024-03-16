﻿BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 7

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
				FROM
					[Child] [t1]
			) [t2]
		WHERE
			[t2].[RN] > @skip AND [t2].[RN] <= @take
	) [t3]

