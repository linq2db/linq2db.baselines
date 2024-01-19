﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[p_p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016
DECLARE @p_p Int -- Int32
SET     @p_p = 2

UPDATE
	[t]
SET
	[t].[p_p] = @p_p
FROM
	[testparams] [t]
WHERE
	[t].[p_p] = 1

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [testparams]

