﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT TOP (@take)
			*
		FROM
			[Child] [t1]
	) [t2]

