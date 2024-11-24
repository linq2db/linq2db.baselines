﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id  -- Int32
SET     @id = 1001
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

