﻿BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Parent] [_]
WHERE
	[_].[ParentID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1

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
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Parent] [_]
WHERE
	[_].[ParentID] > 1000

