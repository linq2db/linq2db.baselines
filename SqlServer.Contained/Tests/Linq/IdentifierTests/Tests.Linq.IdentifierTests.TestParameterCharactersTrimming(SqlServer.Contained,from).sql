﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[from] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [testparams]

