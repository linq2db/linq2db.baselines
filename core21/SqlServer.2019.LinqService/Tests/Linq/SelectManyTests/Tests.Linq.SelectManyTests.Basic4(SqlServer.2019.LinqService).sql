﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[_1].[c1]
FROM
	[Parent] [cp]
		INNER JOIN (
			SELECT
				[_].[ParentID] + 1 as [c1]
			FROM
				[Child] [_]
		) [_1] ON [cp].[ParentID] = [_1].[c1]

