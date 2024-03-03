﻿BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
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
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON (([c_1].[ParentID] = [a_Parent].[ParentID]))
SET
	[c_1].[ChildID] = [c_1].[ChildID] + 1
WHERE
	[c_1].[ChildID] = @id AND ([a_Parent].[Value1] = 1)

BeforeExecute
-- Access AccessOleDb
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1002

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @ChildID

