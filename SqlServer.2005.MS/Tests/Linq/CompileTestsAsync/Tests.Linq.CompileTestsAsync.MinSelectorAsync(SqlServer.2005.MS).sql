﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	MIN([c_1].[Id])
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] > @p

