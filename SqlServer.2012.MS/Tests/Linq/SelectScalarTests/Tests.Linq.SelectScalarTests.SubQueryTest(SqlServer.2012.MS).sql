﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	(
		SELECT TOP (@take)
			[p].[Value1]
		FROM
			[Parent] [p]
	)

