﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
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
			[t2].[RN] > 2 AND [t2].[RN] <= 7
	) [t3]

