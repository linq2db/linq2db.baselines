﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014
DECLARE @from Int -- Int32
SET     @from = 2

UPDATE
	[testparams]
SET
	[from] = @from
WHERE
	[testparams].[from] = 1

