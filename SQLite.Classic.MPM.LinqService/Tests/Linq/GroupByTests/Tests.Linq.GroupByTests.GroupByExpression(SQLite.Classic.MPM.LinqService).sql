﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @defValue  -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN([gr].[ParentID]), @defValue)
FROM
	[Parent] [gr]

