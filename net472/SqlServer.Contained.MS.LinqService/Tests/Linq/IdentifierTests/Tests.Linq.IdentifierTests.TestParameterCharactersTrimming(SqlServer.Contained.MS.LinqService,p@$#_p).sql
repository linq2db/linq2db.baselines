BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[p@$#_p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [testparams]

