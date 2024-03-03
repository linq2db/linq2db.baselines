﻿BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC
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
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON (([c_1].[ParentID] = [a_Parent].[ParentID]))
SET
	[c_1].[ChildID] = [c_1].[ChildID] + 2
WHERE
	[c_1].[ChildID] = ? AND ([a_Parent].[Value1] = 1)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1003

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

