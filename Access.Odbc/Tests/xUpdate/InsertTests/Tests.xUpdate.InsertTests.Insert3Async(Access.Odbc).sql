﻿BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	?
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

