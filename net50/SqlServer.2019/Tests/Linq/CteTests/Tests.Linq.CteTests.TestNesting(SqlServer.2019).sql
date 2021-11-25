BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [NestingA]
(
	[Property1] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [NestingB]
(
	[Property1] NVarChar(4000)     NULL,
	[Property2] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [NestingC]
(
	[Property1] NVarChar(4000)     NULL,
	[Property2] NVarChar(4000)     NULL,
	[Property3] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

WITH [CTE_1] ([Property2])
AS
(
	SELECT
		[a].[Property2]
	FROM
		[NestingC] [a]
)
SELECT
	[c1].[Property2],
	[t_1].[Property2],
	[t_1].[Property3]
FROM
	[CTE_1] [c1]
		CROSS JOIN [NestingC] [t]
		CROSS JOIN [NestingC] [t_1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [NestingC]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [NestingB]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [NestingA]

