BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test-Имя]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Test-Имя]', N'U') IS NULL)
	CREATE TABLE [Test-Имя]
	(
		[Test-Имя] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test-Имя]

