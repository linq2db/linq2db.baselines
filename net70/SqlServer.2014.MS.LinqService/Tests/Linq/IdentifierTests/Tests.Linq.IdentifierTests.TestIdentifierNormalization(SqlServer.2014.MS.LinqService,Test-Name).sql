BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test-Name]', N'U') IS NOT NULL)
	DROP TABLE [Test-Name]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test-Name]', N'U') IS NULL)
	CREATE TABLE [Test-Name]
	(
		[Test-Name] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @TestName Int -- Int32
SET     @TestName = 2

UPDATE
	[t]
SET
	[t].[Test-Name] = @TestName
FROM
	[Test-Name] [t]
WHERE
	[t].[Test-Name] = 1

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test-Name]', N'U') IS NOT NULL)
	DROP TABLE [Test-Name]

