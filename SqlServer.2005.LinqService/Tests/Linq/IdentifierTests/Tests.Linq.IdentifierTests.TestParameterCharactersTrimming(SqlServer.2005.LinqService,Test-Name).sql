BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[Test-Name] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @TestName Int -- Int32
SET     @TestName = 2

UPDATE
	[testparams]
SET
	[Test-Name] = @TestName
WHERE
	[testparams].[Test-Name] = 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

