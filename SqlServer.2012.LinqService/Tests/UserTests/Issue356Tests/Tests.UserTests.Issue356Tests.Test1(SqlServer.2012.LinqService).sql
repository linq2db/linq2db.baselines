﻿BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
	[t3].[ParentID],
	[t3].[ChildID]
FROM
	(
		SELECT
			[x].[ParentID],
			[t2].[ChildID]
		FROM
			[Parent] [x]
				INNER JOIN (
					SELECT DISTINCT
						[c_2].[ParentID],
						[c_2].[ChildID]
					FROM
						(
							SELECT
								[c_1].[ParentID],
								[c_1].[ChildID]
							FROM
								[Child] [c_1]
							UNION
							SELECT
								[t1].[ParentID],
								[t1].[ChildID]
							FROM
								[Child] [t1]
						) [c_2]
				) [t2] ON [t2].[ParentID] = [x].[ParentID]
	) [t3]
ORDER BY
	[t3].[ParentID],
	[t3].[ChildID]

