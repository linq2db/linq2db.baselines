﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	[testparams]
SET
	[1p] = @p
WHERE
	[testparams].[1p] = 1

