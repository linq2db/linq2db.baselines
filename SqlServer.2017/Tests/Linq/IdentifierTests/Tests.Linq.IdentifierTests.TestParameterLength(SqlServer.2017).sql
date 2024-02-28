﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[col1]    Int NOT NULL,
		[Column1] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017
DECLARE @A123456789b123456789c123456789d123456789e123456789 Int -- Int32
SET     @A123456789b123456789c123456789d123456789e123456789 = 2

UPDATE
	[t]
SET
	[t].[col1] = @A123456789b123456789c123456789d123456789e123456789
FROM
	[testparams] [t]
WHERE
	[t].[Column1] = 1

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [testparams]

