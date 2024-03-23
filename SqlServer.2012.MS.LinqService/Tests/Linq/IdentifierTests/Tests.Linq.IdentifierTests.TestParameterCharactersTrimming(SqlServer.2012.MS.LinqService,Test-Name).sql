BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[Test-Name] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @TestName Int -- Int32
SET     @TestName = 2

UPDATE
	[testparams]
SET
	[Test-Name] = @TestName
WHERE
	[testparams].[Test-Name] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

