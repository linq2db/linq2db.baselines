BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[p$_.@#p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016

DROP TABLE IF EXISTS [testparams]

