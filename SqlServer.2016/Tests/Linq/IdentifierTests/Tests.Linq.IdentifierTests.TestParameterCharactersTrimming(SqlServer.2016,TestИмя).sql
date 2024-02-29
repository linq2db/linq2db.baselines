BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[TestИмя] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016
DECLARE @Test Int -- Int32
SET     @Test = 2

UPDATE
	[t]
SET
	[t].[TestИмя] = @Test
FROM
	[testparams] [t]
WHERE
	[t].[TestИмя] = 1

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [testparams]

