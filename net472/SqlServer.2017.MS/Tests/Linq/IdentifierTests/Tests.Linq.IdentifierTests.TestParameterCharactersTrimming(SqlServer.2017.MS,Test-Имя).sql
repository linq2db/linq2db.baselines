BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[Test-Имя] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [testparams]

