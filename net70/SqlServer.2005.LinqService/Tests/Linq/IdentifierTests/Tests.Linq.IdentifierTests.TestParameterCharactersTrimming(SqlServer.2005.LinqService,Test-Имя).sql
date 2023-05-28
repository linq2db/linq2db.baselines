BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[Test-Имя] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @TestИмя Int -- Int32
SET     @TestИмя = 2

UPDATE
	[t]
SET
	[t].[Test-Имя] = @TestИмя
FROM
	[testparams] [t]
WHERE
	[t].[Test-Имя] = 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

