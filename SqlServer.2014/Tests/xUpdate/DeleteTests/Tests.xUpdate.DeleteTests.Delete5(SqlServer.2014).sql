﻿BeforeExecute
--  SqlServer.2014

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
--  SqlServer.2014

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
--  SqlServer.2014
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
--  SqlServer.2014
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1002

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
--  SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
--  SqlServer.2014

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] IN (1001, 1002)

BeforeExecute
--  SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

