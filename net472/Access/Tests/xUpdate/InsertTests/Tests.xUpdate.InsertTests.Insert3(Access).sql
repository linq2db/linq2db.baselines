﻿BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	@id
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

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

DELETE FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

