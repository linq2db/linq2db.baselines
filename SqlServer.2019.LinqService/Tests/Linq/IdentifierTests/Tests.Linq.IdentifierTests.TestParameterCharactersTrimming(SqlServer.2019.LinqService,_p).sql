BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[_p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	[t]
SET
	[t].[_p] = @p
FROM
	[testparams] [t]
WHERE
	[t].[_p] = 1

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [testparams]

