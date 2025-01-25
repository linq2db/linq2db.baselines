BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NestingA]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[NestingA]', N'U') IS NULL)
	CREATE TABLE [NestingA]
	(
		[Property1] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NestingB]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[NestingB]', N'U') IS NULL)
	CREATE TABLE [NestingB]
	(
		[Property1] NVarChar(4000)     NULL,
		[Property2] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NestingC]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[NestingC]', N'U') IS NULL)
	CREATE TABLE [NestingC]
	(
		[Property1] NVarChar(4000)     NULL,
		[Property2] NVarChar(4000)     NULL,
		[Property3] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

WITH [CTE_1] ([Property1])
AS
(
	SELECT
		[a].[Property2]
	FROM
		[NestingC] [a]
)
SELECT
	[c2].[Property1],
	[t_1].[Property2],
	[t_1].[Property3]
FROM
	[CTE_1] [c2]
		CROSS JOIN [NestingC] [t]
		CROSS JOIN [NestingC] [t_1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NestingC]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NestingB]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NestingA]

