﻿BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	(
		SELECT TOP (@take)
			[d].[Taxonomy]
		FROM
			[Doctor] [d]
		WHERE
			[t1].[PersonID] = [d].[PersonID]
	)
FROM
	[Doctor] [t1]
GROUP BY
	[t1].[PersonID]

