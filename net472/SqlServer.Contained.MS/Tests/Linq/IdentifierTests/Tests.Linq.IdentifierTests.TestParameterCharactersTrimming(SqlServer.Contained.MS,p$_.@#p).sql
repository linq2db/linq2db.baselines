BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[p$_.@#p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p$_@#p Int -- Int32
SET     @p$_@#p = 2

UPDATE
	[t]
SET
	[t].[p$_.@#p] = @p$_@#p
FROM
	[testparams] [t]
WHERE
	[t].[p$_.@#p] = 1

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [testparams]

