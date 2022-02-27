BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [NestingA]
(
	[Property1] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [NestingB]
(
	[Property1] NVarChar(4000)     NULL,
	[Property2] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [NestingC]
(
	[Property1] NVarChar(4000)     NULL,
	[Property2] NVarChar(4000)     NULL,
	[Property3] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

WITH [CTE_1] ([Property2])
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
	(
		SELECT
			[c1].[Property2] as [Property1]
		FROM
			[CTE_1] [c1],
			[NestingC] [t]
	) [c2],
	[NestingC] [t_1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [NestingC]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [NestingB]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [NestingA]

