﻿BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT 
	[t2].[ParentID], 
	[t2].[ChildID]
FROM
	( 
		SELECT 
			[t1].[ParentID], 
			[t1].[ChildID], 
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			[Child] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 4

SELECT 
	[t2].[ParentID], 
	[t2].[ChildID]
FROM
	( 
		SELECT 
			[t1].[ParentID], 
			[t1].[ChildID], 
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			[Child] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip

