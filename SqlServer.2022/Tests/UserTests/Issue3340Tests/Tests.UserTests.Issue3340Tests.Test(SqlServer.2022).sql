BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SampleTable]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[SampleTable]', N'U') IS NULL)
	CREATE TABLE [SampleTable]
	(
		[Object] NVarChar(Max)     NULL
	)

BeforeExecute
-- SqlServer.2022
DECLARE @p NVarChar(4000) -- String
SET     @p = N'test'

UPDATE
	[SampleTable]
SET
	[Object] = JSON_MODIFY([SampleTable].[Object], N'$.Sample', @p)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SampleTable]

