﻿BeforeExecute
--  SqlCe

SELECT
	MAX([r].[PersonID]) as [c1]
FROM
	[Person] [r]
UNION ALL
SELECT
	[r_1].[PersonID] as [c1]
FROM
	[Person] [r_1]

