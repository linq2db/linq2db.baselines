﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[_1].[c1],
	Count(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Person] [_]
		WHERE
			1 = 0
	) [_1]
GROUP BY
	[_1].[c1]

