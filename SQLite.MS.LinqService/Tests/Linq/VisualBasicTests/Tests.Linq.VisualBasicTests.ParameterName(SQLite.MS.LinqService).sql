﻿BeforeExecute
--  SQLite.MS SQLite
DECLARE @VBLocal_id  -- Int32
SET     @VBLocal_id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @VBLocal_id

