BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[Test-٣ᛯ౾-End] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Test٣End Int -- Int32
SET     @Test٣End = 2

UPDATE
	[t]
SET
	[t].[Test-٣ᛯ౾-End] = @Test٣End
FROM
	[testparams] [t]
WHERE
	[t].[Test-٣ᛯ౾-End] = 1

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [testparams]

