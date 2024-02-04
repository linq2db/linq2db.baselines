﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[1p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	[t]
SET
	[t].[1p] = @p
FROM
	[testparams] [t]
WHERE
	[t].[1p] = 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

