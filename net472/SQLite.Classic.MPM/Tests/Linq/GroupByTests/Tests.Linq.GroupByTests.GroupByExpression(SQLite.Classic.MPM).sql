﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @defValue  -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min([t1].[ParentID]), @defValue)
FROM
	[Parent] [t1]

