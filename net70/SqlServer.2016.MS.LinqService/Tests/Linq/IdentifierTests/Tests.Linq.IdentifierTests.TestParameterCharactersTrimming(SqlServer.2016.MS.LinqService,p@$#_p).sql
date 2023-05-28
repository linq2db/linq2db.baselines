BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[p@$#_p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p@$#_p Int -- Int32
SET     @p@$#_p = 2

UPDATE
	[t]
SET
	[t].[p@$#_p] = @p@$#_p
FROM
	[testparams] [t]
WHERE
	[t].[p@$#_p] = 1

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [testparams]

