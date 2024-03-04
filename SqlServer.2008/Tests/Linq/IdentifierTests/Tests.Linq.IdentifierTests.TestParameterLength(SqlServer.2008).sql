﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[col1]    Int NOT NULL,
		[Column1] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @A123456789b123456789c123456789d123456789e123456789 Int -- Int32
SET     @A123456789b123456789c123456789d123456789e123456789 = 2

UPDATE
	[testparams]
SET
	[col1] = @A123456789b123456789c123456789d123456789e123456789
WHERE
	[testparams].[Column1] = 1

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

