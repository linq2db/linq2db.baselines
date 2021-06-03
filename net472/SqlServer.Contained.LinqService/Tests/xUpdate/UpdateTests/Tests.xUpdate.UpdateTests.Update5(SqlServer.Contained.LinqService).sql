﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1002
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[c_1]
SET
	[c_1].[ChildID] = @ChildID
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[c_1].[ChildID] = @id AND [a_Parent].[Value1] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1002

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @ChildID

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

