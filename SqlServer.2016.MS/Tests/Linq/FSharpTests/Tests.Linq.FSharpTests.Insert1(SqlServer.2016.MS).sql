﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 1001

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

