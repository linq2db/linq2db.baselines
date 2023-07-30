﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[from] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @from Int -- Int32
SET     @from = 2

UPDATE
	[t]
SET
	[t].[from] = @from
FROM
	[testparams] [t]
WHERE
	[t].[from] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

