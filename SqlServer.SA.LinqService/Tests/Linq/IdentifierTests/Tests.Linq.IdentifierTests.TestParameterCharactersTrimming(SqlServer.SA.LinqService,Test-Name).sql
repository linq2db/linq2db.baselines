BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[Test-Name] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @TestName Int -- Int32
SET     @TestName = 2

UPDATE
	[t]
SET
	[t].[Test-Name] = @TestName
FROM
	[testparams] [t]
WHERE
	[t].[Test-Name] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [testparams]

