BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SampleTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SampleTable]', N'U') IS NULL)
	CREATE TABLE [SampleTable]
	(
		[Object] NVarChar(Max)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SampleTable]

