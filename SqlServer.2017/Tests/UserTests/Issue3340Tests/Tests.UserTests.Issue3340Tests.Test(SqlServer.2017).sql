BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SampleTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[SampleTable]', N'U') IS NULL)
	CREATE TABLE [SampleTable]
	(
		[Object] NVarChar(Max)     NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SampleTable]

