﻿BeforeExecute
-- SqlServer.2012 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	[testparams]
SET
	[_p] = @p
WHERE
	[testparams].[_p] = 1

