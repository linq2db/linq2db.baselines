﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

DELETE FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

