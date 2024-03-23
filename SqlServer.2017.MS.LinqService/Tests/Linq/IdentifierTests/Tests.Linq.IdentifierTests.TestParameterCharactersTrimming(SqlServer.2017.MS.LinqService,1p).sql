BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[1p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	[testparams]
SET
	[1p] = @p
WHERE
	[testparams].[1p] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [testparams]

