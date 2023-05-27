BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test-Имя]', N'U') IS NOT NULL)
	DROP TABLE [Test-Имя]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test-Имя]', N'U') IS NULL)
	CREATE TABLE [Test-Имя]
	(
		[Test-Имя] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @TestИмя Int -- Int32
SET     @TestИмя = 2

UPDATE
	[t]
SET
	[t].[Test-Имя] = @TestИмя
FROM
	[Test-Имя] [t]
WHERE
	[t].[Test-Имя] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test-Имя]', N'U') IS NOT NULL)
	DROP TABLE [Test-Имя]

