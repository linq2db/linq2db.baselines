BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[_p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	[testparams]
SET
	[_p] = @p
WHERE
	[testparams].[_p] = 1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [testparams]

