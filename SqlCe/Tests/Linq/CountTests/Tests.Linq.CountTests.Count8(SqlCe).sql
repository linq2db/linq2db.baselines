﻿BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Child] [p]
		LEFT JOIN [Parent] [a_Parent] ON [p].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1

BeforeExecute
-- SqlCe

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Child] [p]
		LEFT JOIN [Parent] [a_Parent] ON [p].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1

