﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @group Int -- Int32
SET     @group = 7

SELECT
	[p].[Id],
	LEAD([p].[Id], 1, -1) OVER(ORDER BY [p].[Order])
FROM
	[Position] [p]
WHERE
	[p].[Group] = @group

