﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id  -- Int32
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
-- Access.Jet.Odbc AccessODBC
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

