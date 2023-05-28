BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[Test-葛󠄀城市-End] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Test葛城市End Int -- Int32
SET     @Test葛城市End = 2

UPDATE
	[t]
SET
	[t].[Test-葛󠄀城市-End] = @Test葛城市End
FROM
	[testparams] [t]
WHERE
	[t].[Test-葛󠄀城市-End] = 1

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [testparams]

