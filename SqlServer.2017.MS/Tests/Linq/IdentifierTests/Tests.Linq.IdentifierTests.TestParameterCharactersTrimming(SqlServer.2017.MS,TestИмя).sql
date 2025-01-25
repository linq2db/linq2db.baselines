BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[TestИмя] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Test Int -- Int32
SET     @Test = 2

UPDATE
	[testparams]
SET
	[TestИмя] = @Test
WHERE
	[testparams].[TestИмя] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [testparams]

