﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT TOP (@take)
			[t1].[ParentID]
		FROM
			[Child] [t1]
	) [t2]

