﻿BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 5

SELECT
	SUM(CAST([c_1].[Id] AS Real))
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] < @p

